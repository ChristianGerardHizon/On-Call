import 'package:authentication_package/authentication_package.dart';
import 'package:core_package/entities/entities.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/core/providers/providers.dart';
import 'package:on_call/main.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(authRepo);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _auth;

  AuthNotifier(this._auth)
      : super(const AuthState(isAuthenticated: false, type: null));

  /// Retrieves the authenticated user's information from the authentication repository.
  ///
  /// This function is part of the [AuthNotifier] class, responsible for managing authentication state
  /// and providing access to the authenticated user's data.
  ///
  /// Returns:
  ///   - If the user is authenticated, it returns the [User] object representing the authenticated user.
  ///   - If the user is not authenticated or an error occurs during the retrieval process, it returns null.
  User? getAuth() {
    final result = _auth.getUser();
    return result.fold((l) => null, (r) => r);
  }
}
