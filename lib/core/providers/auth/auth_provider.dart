import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/core/providers/providers.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState(isAuthenticated: false, type: null));

  // update auth
  void updateAuthStatus(bool status) {
    state = state.copyWith(isAuthenticated: status);
  }
}
