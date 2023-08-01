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
  Future<User?> getAuth() async {
    final result = await _auth.getUser();
    return result.fold((l) {
      print({'getAuth Failed': l});
      return null;
    }, (r) {
      print({'getAuth': r});
      return r;
    });
  }
}
