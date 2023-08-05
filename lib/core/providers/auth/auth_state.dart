import 'package:core_package/core_package.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class AuthState extends Equatable {
  final User? user;
  final String? token;
  final bool isLoading;

  const AuthState({this.token, this.user, this.isLoading = false});

  UserType? get type => user?.type;

  AuthState copyWith({String? token, User? user, bool? isLoading}) {
    return AuthState(
      user: user ?? this.user,
      token: token ?? this.token,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [token, token, isLoading];
}
