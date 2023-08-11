import 'package:core_package/entities/entities.dart';
import 'package:equatable/equatable.dart';

class LoginScreenState extends Equatable {
  final String? email;
  final String? password;
  final bool isSuccess;
  final bool isLoading;
  final String? error;
  final User? user;

  const LoginScreenState({
    this.email,
    this.password,
    this.isSuccess = false,
    this.isLoading = false,
    this.error,
    this.user,
  });

  LoginScreenState copyWith({
    String? email,
    String? password,
    bool? isSuccess,
    bool? isLoading,
    String? error,
    User? user,
  }) {
    return LoginScreenState(
      email: email ?? this.email,
      password: password ?? this.password,
      isSuccess: isSuccess ?? this.isSuccess,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        isSuccess,
        isLoading,
        error,
        user,
      ];
}
