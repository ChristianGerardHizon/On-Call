import 'dart:async';

import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/main.dart';

final spViewProvider = AsyncNotifierProvider.family<ServiceProviderViewNotifier,
    ServiceProviderUser?, String?>(
  () => ServiceProviderViewNotifier(),
);

class ServiceProviderViewNotifier
    extends FamilyAsyncNotifier<ServiceProviderUser?, String?> {
  ServiceProviderViewNotifier();
  @override
  FutureOr<ServiceProviderUser?> build(String? id) async {
    if (id == null) {
      return Future.error('id is null');
    }
    return _get(id);
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
