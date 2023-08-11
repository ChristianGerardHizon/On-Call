import 'package:authentication_package/authentication_package.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_call/main.dart';

part 'recovery_provider.freezed.dart';

@freezed
class RecoveryScreenState with _$RecoveryScreenState {
  const factory RecoveryScreenState.failed({required String status}) =
      RecoveryScreenStateFailed;
  const factory RecoveryScreenState.success() = RecoveryScreenStateSuccecss;
  const factory RecoveryScreenState.initial() = RecoveryScreenStateInitial;
  const factory RecoveryScreenState.loading() = RecoveryScreenStateLoading;
}

// Authentication state notifier
class AuthNotifier extends StateNotifier<RecoveryScreenState> {
  AuthNotifier(this.repo) : super(const RecoveryScreenState.initial());

  final AuthRepository repo;

  // Call this function to simulate a login
  Future<void> register(Map<String, dynamic> json) async {
    flog.d(json);
    state = const RecoveryScreenState.loading();
    await Future.delayed(const Duration(seconds: 2));
    // state = const SpCreateState.failed(status: 'Failed to create account...');
    state = const RecoveryScreenState.success();
  }
}

// Riverpod provider for authentication
final recoveryProd =
    StateNotifierProvider<AuthNotifier, RecoveryScreenState>((ref) {
  return AuthNotifier(ref.read(authRepoProvider));
});
