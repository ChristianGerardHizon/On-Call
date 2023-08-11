import 'package:admin_package/admin_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_call/main.dart';

part 'sp_create_provider.freezed.dart';

@freezed
class SpCreateState with _$SpCreateState {
  const factory SpCreateState.failed({String? status}) = SpCreateFailedState;
  const factory SpCreateState.authenticated() = SpCreateAuthenticatedState;
  const factory SpCreateState.unauthenticated() = SpCreateUnAuthenticatedState;
  const factory SpCreateState.loading() = SpCreateLoadingState;
}

// Authentication state notifier
class AuthNotifier extends StateNotifier<SpCreateState> {
  AuthNotifier(this.repo) : super(const SpCreateState.unauthenticated());

  final AdminRepository repo;

  // Call this function to simulate a login
  void register(Map<String, dynamic> json) {
    state = const SpCreateState.loading();
    state = const SpCreateState.authenticated();
  }
}

// Riverpod provider for authentication
final spCreateProvider =
    StateNotifierProvider<AuthNotifier, SpCreateState>((ref) {
  return AuthNotifier(ref.read(adminRepoProvider));
});
