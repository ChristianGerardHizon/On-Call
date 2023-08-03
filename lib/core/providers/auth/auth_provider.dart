import 'dart:developer';

import 'package:authentication_package/authentication_package.dart';
import 'package:core_package/entities/entities.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/core/providers/providers.dart';

import '../../../main.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(authRepo);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _auth;

  AuthNotifier(this._auth) : super(const AuthState());

  /// Retrieves the authenticated user's information from the authentication repository.
  ///
  /// This function is part of the [AuthNotifier] class, responsible for managing authentication state
  /// and providing access to the authenticated user's data.
  ///
  /// Returns:
  ///   - If the user is authenticated, it returns the [User] object representing the authenticated user.
  ///   - If the user is not authenticated or an error occurs during the retrieval process, it returns null.
  Future<User?> getAuth({Duration? delay}) async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(delay ?? const Duration());
    final successOrFail = await _auth.getUser(useNetwork: true);
    return successOrFail.fold(
      (l) {
        log('getAuth Failed', error: l);
        return null;
      },
      (r) {
        final token = _auth.getToken();
        state = AuthState(user: r, token: token, isLoading: false);
        return r;
      },
    );
  }

  Future<void> clearAuth() async {
    state = state.copyWith(isLoading: true);
    await _auth.signOut();
    state = const AuthState(user: null, token: null, isLoading: false);
  }
}
