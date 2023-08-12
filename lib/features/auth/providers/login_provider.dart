import 'package:authentication_package/authentication_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_call/core/providers/providers.dart';
import 'package:on_call/providers.dart';

part 'login_provider.freezed.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  @Default('Something went wrong')
  const factory LoginScreenState.failed({String? status}) =
      LoginScreenStateFailed;
  const factory LoginScreenState.success() = LoginScreenSuccess;
  const factory LoginScreenState.initial() = LoginScreenFailed;
  const factory LoginScreenState.loading() = LoginScreenLoading;
  const factory LoginScreenState.authenticated() = LoginScreenAuthenticated;
}

// Authentication state notifier
class _LoginScreenNotifier extends StateNotifier<LoginScreenState> {
  _LoginScreenNotifier(bool isLoggedIn, this.useCase)
      : super(isLoggedIn
            ? const LoginScreenState.authenticated()
            : const LoginScreenState.initial());

  final LoginUseCase useCase;

  // Call this function to  simulate a login
  Future<void> login(Map<String, dynamic> json) async {
    state = const LoginScreenState.loading();
    final params = LoginParams.fromJson(json);
    final successOrFail = await useCase(params: params);
    state = successOrFail.fold(
      (error) => LoginScreenState.failed(status: error.message),
      (data) => const LoginScreenState.success(),
    );
  }
}

// Riverpod provider for authentication
final loginScreenProd =
    StateNotifierProvider.autoDispose<_LoginScreenNotifier, LoginScreenState>(
  (ref) {
    final user = ref.read(authProvider).user;
    return _LoginScreenNotifier(user != null, ref.read(logInUseCase));
  },
);
