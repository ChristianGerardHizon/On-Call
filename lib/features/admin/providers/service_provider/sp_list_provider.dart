import 'dart:async';

import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/providers.dart';

import '../../../../core/typedefs/typedefs.dart';

final spListProvider = AsyncNotifierProvider<ServiceProviderListNotifier,
    ServiceProviderUserRecord>(() => ServiceProviderListNotifier());

final spListSearchProvider = StateProvider.autoDispose<bool>((ref) => false);

class ServiceProviderListNotifier
    extends AsyncNotifier<ServiceProviderUserRecord> {
  ServiceProviderListNotifier();

  @override
  Future<ServiceProviderUserRecord> build() async {
    final repo = ref.read(adminRepoProd);
    final successOrFail = await repo.getServiceProviderUsers();
    return successOrFail.fold(
      (l) => Future.error(l),
      (r) => r,
    );
  }

  Future<void> refresh({PageOptions? page}) async {
    state = const AsyncValue.loading();
    final repo = ref.read(adminRepoProd);
    final successOrFail = await repo.getServiceProviderUsers(page: page);
    state = successOrFail.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(r),
    );
  }

  Future<void> search(String query) async {
    state = const AsyncValue.loading();
    final repo = ref.read(adminRepoProd);
    final page = PageOptions(
        filter:
            'email ~ "$query" || firstName ~ "$query" || lastName ~ "$query"');
    final successOrFail = await repo.getServiceProviderUsers(page: page);
    state = successOrFail.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(r.copyWith(searchString: query)),
    );
  }

  Future<void> nextPage({PageOptions? page}) async {
    final data = state.asData;
    if (data == null) {
      refresh(page: page);
      return;
    }

    final items = data.value.items;

    state = const AsyncValue.loading();
    final repo = ref.read(adminRepoProd);
    final successOrFail = await repo.getServiceProviderUsers(page: page);
    state = successOrFail.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(r.copyWith(items: [...items, ...r.items])),
    );
  }
}
