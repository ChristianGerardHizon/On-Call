import 'dart:async';

import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/providers.dart';

import '../../../../core/typedefs/typedefs.dart';

final serviceListScreenProd =
    AsyncNotifierProvider<_ServiceScreenListNotifier, ServiceRecord>(
        () => _ServiceScreenListNotifier());

final serviceListScreenProvider =
    StateProvider.autoDispose<bool>((ref) => false);

class _ServiceScreenListNotifier extends AsyncNotifier<ServiceRecord> {
  _ServiceScreenListNotifier();

  @override
  Future<ServiceRecord> build() async {
    final repo = ref.read(serviceRepoProd);
    final successOrFail = await repo.list();
    return successOrFail.fold(
      (l) => Future.error(l),
      (r) => r,
    );
  }

  Future<void> refresh({PageOptions? page}) async {
    state = const AsyncValue.loading();
    final repo = ref.read(serviceRepoProd);
    final successOrFail = await repo.list(page: page);
    state = successOrFail.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(r),
    );
  }

  Future<void> search(String query) async {
    state = const AsyncValue.loading();
    final repo = ref.read(serviceRepoProd);
    final page = PageOptions(filter: 'name ~ "$query" ');
    final successOrFail = await repo.list(page: page);
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
    final repo = ref.read(serviceRepoProd);
    final successOrFail = await repo.list(page: page);
    state = successOrFail.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(r.copyWith(items: [...items, ...r.items])),
    );
  }
}
