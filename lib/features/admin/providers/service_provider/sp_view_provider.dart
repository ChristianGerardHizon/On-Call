import 'dart:async';

import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/main.dart';

final spViewIdProvider = StateProvider.autoDispose<String?>((ref) => null);
final spViewProvider = AsyncNotifierProvider.autoDispose<
    ServiceProviderViewNotifier, ServiceProviderUser?>(
  () => ServiceProviderViewNotifier(),
);

class ServiceProviderViewNotifier
    extends AutoDisposeAsyncNotifier<ServiceProviderUser?> {
  ServiceProviderViewNotifier();
  @override
  FutureOr<ServiceProviderUser?> build() async {
    final id = ref.read(spViewIdProvider);

    if (id != null) {
      return _get(id);
    }

    return null;
  }

  Future<void> getServiceProvider(String id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await _get(id);
      return result;
    });
  }

  Future<ServiceProviderUser?> _get(String id) async {
    final repo = ref.read(adminRepoProvider);
    final successOrFail = await repo.getServiceProviderUser(id);
    return successOrFail.fold(
      (l) => Future.error(l),
      (r) => r,
    );
  }
}
