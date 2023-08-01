import 'package:authentication_package/authentication_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/main.dart';

final loginProvider =
    StateNotifierProvider.autoDispose<LoginScreenNotifier, LoginState>((ref) {
  return LoginScreenNotifier(authRepo);
});

class LoginScreenNotifier extends StateNotifier<LoginState> {
  LoginScreenNotifier(this.repo) : super(LoginState.initial);
  final AuthRepository repo;

  // login
  Future<void> login({required String email, required String password}) async {
    state = LoginState.loading;
    final result =
        await repo.logIn('christiangerardhizon@gmail.com', 'password101');

    state = result.fold((l) {
      print({'login Error': l});
      return LoginState.error;
    }, (r) {
      print({'success': r});
      return LoginState.success;
    });
  }
}

enum LoginState {
  initial,
  loading,
  success,
  error,
}
