import 'package:core_package/entities/entities.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class AuthState extends Equatable {
  final User? user;
  final String? token;

  const AuthState({this.token, this.user});

  UserType? get type => user?.type;

  AuthState copyWith({String? token, User? user}) {
    return AuthState(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  @override
  List<Object?> get props => [token, token];
}
