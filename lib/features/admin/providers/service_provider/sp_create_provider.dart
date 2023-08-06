import 'package:admin_package/admin_package.dart';
import 'package:authentication_package/authentication_package.dart';
import 'package:core_package/enums/user_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/main.dart';

final spCreateProvider = StateProvider<RegistrationFormController>((ref) {
  final auth = ref.read(authRepoProvider);
  final admin = ref.read(adminRepoProvider);
  return RegistrationFormController(auth, admin);
});

class RegistrationFormController extends StateNotifier<RegistrationParams> {
  RegistrationFormController(this._authRepo, this._adminRepo)
      : super(
          RegistrationParams(
            username: '',
            email: '',
            emailVisibility: true,
            password: '',
            passwordConfirm: '',
            firstName: '',
            lastName: '',
            type: UserType.serviceProvider,
            isActive: true,
          ),
        );

  final AuthRepository _authRepo;
  final AdminRepository _adminRepo;

  void setUsername(String username) {
    state = state.copyWith(username: username);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setEmailVisibility(bool emailVisibility) {
    state = state.copyWith(emailVisibility: emailVisibility);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setPasswordConfirm(String passwordConfirm) {
    state = state.copyWith(passwordConfirm: passwordConfirm);
  }

  void setFirstName(String firstName) {
    state = state.copyWith(firstName: firstName);
  }

  void setLastName(String lastName) {
    state = state.copyWith(lastName: lastName);
  }

  void setType(UserType type) {
    state = state.copyWith(type: type);
  }

  void setIsActive(bool isActive) {
    state = state.copyWith(isActive: isActive);
  }
}
