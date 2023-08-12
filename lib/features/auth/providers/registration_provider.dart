import 'package:admin_package/admin_package.dart';
import 'package:authentication_package/authentication_package.dart';
import 'package:authentication_package/domain/entities/registration_params.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_call/providers.dart';

part 'registration_provider.freezed.dart';

@freezed
class RegisterScreenState with _$RegisterScreenState {
  const factory RegisterScreenState.failed({required String status}) =
      RegisterScreenStateFailed;
  const factory RegisterScreenState.success() = RegistrationSuccess;
  const factory RegisterScreenState.initial() = RegistrationFailed;
  const factory RegisterScreenState.loading() = RegistrationLoading;
}

// Authentication state notifier
class _RegistrationNotifier extends StateNotifier<RegisterScreenState> {
  _RegistrationNotifier(this.registerUseCase, this.createSPUseCase)
      : super(const RegisterScreenState.initial());

  final RegisterUseCase registerUseCase;
  final CreateServiceProviderUseCase createSPUseCase;

  // Call this function to simulate a login
  Future<void> register(Map<String, dynamic> json) async {
    state = const RegisterScreenState.loading();
    final params = RegistrationParams.fromJson(json);
    final successOrFail =
        await registerUseCase(params: params.copyWith(type: UserType.customer));
    state = successOrFail.fold(
      (error) =>
          const RegisterScreenState.failed(status: 'Something went wrong'),
      (data) => const RegisterScreenState.success(),
    );
  }

  // Call this function to simulate a login
  Future<void> registerAsServiceProvider(Map<String, dynamic> json) async {
    state = const RegisterScreenState.loading();
    final params = RegistrationParams.fromJson(json);

    final successOrFail = await registerUseCase(
      params: params.copyWith(type: UserType.serviceProvider),
    );

    final failure = successOrFail.failure;
    if (failure != null) {
      state = const RegisterScreenState.failed(
        status: 'Something went wrong with registration',
      );
      return;
    }

    final data = successOrFail.data;
    if (data == null) {
      state = const RegisterScreenState.failed(
        status: 'Something went wrong with data',
      );
      return;
    }
    final params2 = CreateServiceProviderParams.fromJson(
        {...json, 'isPublic': false, 'userRef': data.id});
    final successOrFail2 = await createSPUseCase(params: params2);
    state = successOrFail2.fold(
      (error) => const RegisterScreenState.failed(
        status: 'Something went wrong with data',
      ),
      (data) => const RegisterScreenState.success(),
    );
  }
}

// Riverpod provider for authentication
final registerProd = StateNotifierProvider.autoDispose<_RegistrationNotifier,
    RegisterScreenState>((ref) {
  return _RegistrationNotifier(
      ref.read(registerUseCase), ref.read(createSPUseCase));
});
