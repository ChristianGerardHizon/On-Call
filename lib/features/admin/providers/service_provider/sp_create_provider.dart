import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'sp_create_provider.freezed.dart';

// Authentication state
enum SpCreateScreenState {
  unauthenticated,
  authenticated,
  loading,
}

// Authentication state notifier
class AuthNotifier extends StateNotifier<SpCreateState> {
  AuthNotifier() : super(const SpCreateState.unauthenticated());

  // Call this function to simulate a login
  void login() {
    state = const SpCreateState.loading();

    state = const SpCreateState.authenticated();
  }

  // Call this function to simulate a logout
  void logout() {
    state = const SpCreateState.loading();

    state = const SpCreateState.unauthenticated();
  }
}

// Riverpod provider for authentication
final spCreateProvider =
    StateNotifierProvider<AuthNotifier, SpCreateState>((ref) {
  return AuthNotifier();
});

@freezed
class SpCreateState with _$SpCreateState {
  const factory SpCreateState.failed({String? status}) = SpCreateFailedState;
  const factory SpCreateState.authenticated() = SpCreateAuthenticatedState;
  const factory SpCreateState.unauthenticated() = SpCreateUnAuthenticatedState;
  const factory SpCreateState.loading() = SpCreateLoadingtate;
}
