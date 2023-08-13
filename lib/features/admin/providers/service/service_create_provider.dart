import 'package:admin_package/admin_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_call/providers.dart';

part 'service_create_provider.freezed.dart';

@freezed
class ServiceCreateState with _$ServiceCreateState {
  const factory ServiceCreateState.failed({required String status}) =
      ServiceCreateFailed;
  const factory ServiceCreateState.success() = ServiceCreateSuccess;

  const factory ServiceCreateState.loading() = ServiceCreateLoading;
  const factory ServiceCreateState.initial() = ServiceCreateInitial;
}

// Authentication state notifier
class _Notifier extends StateNotifier<ServiceCreateState> {
  _Notifier(this.create) : super(const ServiceCreateState.initial());

  final CreateServiceUseCase create;

  // Call this function to simulate a login
  Future<void> save(Map<String, dynamic> json) async {
    state = const ServiceCreateState.loading();
    final successOrFail =
        await create(params: CreateServiceParams.fromJson(json));
    state = successOrFail.fold(
      (l) => ServiceCreateState.failed(status: l.toString()),
      (r) => const ServiceCreateState.success(),
    );
    state = const ServiceCreateState.success();
  }
}

// Riverpod provider for authentication
final serviceCreateProvider =
    StateNotifierProvider.autoDispose<_Notifier, ServiceCreateState>((ref) {
  return _Notifier(ref.read(createServiceUseCase));
});
