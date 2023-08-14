import 'dart:async';

import 'package:admin_package/admin_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/providers.dart';

final supportViewScreenProd =
    AsyncNotifierProvider.family<_Notifier, Service, String?>(
  () => _Notifier(),
);

class _Notifier extends FamilyAsyncNotifier<Service, String?> {
  @override
  FutureOr<Service> build(String? id) async {
    if (id == null) {
      return Future.error('id is null');
    }
    return _get(id);
  }

  Future<void> load(String id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _get(id));
  }

  Future<Service> _get(String id) async {
    final successOrFail = await ref.read(getServiceUseCase)(params: id);
    return successOrFail.fold(
      (l) => Future.error(l),
      (r) => Future.value(r),
    );
  }
}
