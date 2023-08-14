import 'dart:async';

import 'package:admin_package/admin_package.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/providers.dart';

import '../../../../core/typedefs/typedefs.dart';

final supportListScreenProd =
    AsyncNotifierProvider<_ServiceScreenListNotifier, ServiceRecord>(
        () => _ServiceScreenListNotifier());

final supportListScreenProvider =
    StateProvider.autoDispose<bool>((ref) => false);

class _ServiceScreenListNotifier extends AsyncNotifier<ServiceRecord> {
  _ServiceScreenListNotifier();

  final tempList = PBRecord<List<Service>>(
    items: List<Service>.empty(),
    page: 0,
    perPage: 30,
    totalItems: 0,
    totalPages: 1,
  );

  @override
  Future<ServiceRecord> build() async {
    final repo = ref.read(serviceRepoProd);
    final successOrFail = await repo.list();
    return successOrFail.fold(
      (l) => Future.error(l),
      (r) => tempList,
    );
  }

  Future<void> refresh({PageOptions? page}) async {
    state = const AsyncValue.loading();
    final repo = ref.read(serviceRepoProd);
    final successOrFail = await repo.list(page: page);
    state = successOrFail.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(tempList),
    );
  }

  Future<void> search(String query) async {
    state = const AsyncValue.loading();
    final repo = ref.read(serviceRepoProd);
    final page = PageOptions(filter: 'name ~ "$query" ');
    final successOrFail = await repo.list(page: page);
    state = successOrFail.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(tempList),
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
      (r) => AsyncValue.data(tempList.copyWith(items: [...items, ...r.items])),
    );
  }
}
