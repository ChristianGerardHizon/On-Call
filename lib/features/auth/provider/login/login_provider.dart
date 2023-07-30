import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/core/providers/auth/auth.dart';

final loginProvider =
    StateNotifierProvider.autoDispose<LoginScreenNotifier, _LoginState>((ref) {
  return LoginScreenNotifier();
});

class LoginScreenNotifier extends StateNotifier<_LoginState> {
  LoginScreenNotifier() : super(_LoginState.initial);

  // login
  void login(bool status) {
    state = _LoginState.loading;
    state = _LoginState.error;
  }
}

enum _LoginState {
  initial,
  loading,
  success,
  error,
}
