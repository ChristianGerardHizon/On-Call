import 'dart:async';

import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/main.dart';

import '../../../../core/typedefs/typedefs.dart';

final spListProvider =
    AsyncNotifierProvider<ServiceProviderListNotifier, ServiceProviderRecord>(
        () => ServiceProviderListNotifier());

class ServiceProviderListNotifier extends AsyncNotifier<ServiceProviderRecord> {
  ServiceProviderListNotifier();

  @override
  Future<ServiceProviderRecord> build() async {
    ref;
    return _getList();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await _getList();
    });
  }

  Future<ServiceProviderRecord> _getList({PageOptions? page}) async {
    final repo = ref.read(adminRepoProvider);
    final successOrFail = await repo.getServiceProviders(page: page);
    return successOrFail.fold(
      (l) => throw l,
      (r) => r,
    );
  }
}
