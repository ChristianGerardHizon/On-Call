import 'package:admin_package/admin_package.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_call/main.dart';

part 'sp_create_provider.freezed.dart';

@freezed
class SpCreateState with _$SpCreateState {
  const factory SpCreateState.failed({required String status}) =
      SpCreateFailedState;
  const factory SpCreateState.authenticated() = SpCreateAuthenticatedState;
  const factory SpCreateState.unauthenticated() = SpCreateUnAuthenticatedState;
  const factory SpCreateState.loading() = SpCreateLoadingState;
}

// Authentication state notifier
class AuthNotifier extends StateNotifier<SpCreateState> {
  AuthNotifier(this.repo) : super(const SpCreateState.unauthenticated());

  final AdminRepository repo;

  // Call this function to simulate a login
  Future<void> register(Map<String, dynamic> json) async {
    flog.d(json);
    state = const SpCreateState.loading();
    await Future.delayed(const Duration(seconds: 2));
    // state = const SpCreateState.failed(status: 'Failed to create account...');
    state = const SpCreateState.authenticated();
  }
}

// Riverpod provider for authentication
final spCreateProvider =
    StateNotifierProvider<AuthNotifier, SpCreateState>((ref) {
  return AuthNotifier(ref.read(adminRepoProvider));
});
