import 'package:authentication_package/authentication_package.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/main.dart';

import 'login_screen_state.dart';

final loginProvider =
    StateNotifierProvider.autoDispose<LoginScreenNotifier, LoginScreenState>(
        (ref) {
  return LoginScreenNotifier(ref.read(authRepoProvider));
});

class LoginScreenNotifier extends StateNotifier<LoginScreenState> {
  LoginScreenNotifier(this.repo) : super(const LoginScreenState());
  final AuthDesignRepository repo;

  String? validateEmail() {
    final value = state.email;
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!EmailValidator.validate(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword() {
    final value = state.password;
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  void updateEmail(String? value) {
    state = state.copyWith(email: value);
  }

  void updatePassword(String? value) {
    state = state.copyWith(password: value);
  }

  void showError(String? value) {
    state = state.copyWith(error: value);
  }

  // login
  Future<void> login() async {
    state = state.copyWith(isLoading: true, error: null);

    final email = state.email;
    final password = state.password;

    if (email == null || password == null) {
      state = state.copyWith(isLoading: false, error: 'Inputs are invalid');
      return;
    }

    if (validateEmail() != null) {
      state = state.copyWith(isLoading: false, error: 'Invalid email');
      return;
    }

    if (validatePassword() != null) {
      state = state.copyWith(isLoading: false, error: 'Invalid password');
      return;
    }

    final result = await repo.logIn(email, password);

    result.fold((l) {
      print({'login Error': l});
      state = state.copyWith(
        isLoading: false,
        error: 'Login Failed',
        isSuccess: false,
      );
    }, (r) {
      print({'success': r});
      state = state.copyWith(isLoading: false, isSuccess: true);
    });
  }
}
