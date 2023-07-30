import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:on_call/core/enums/enums.dart';

@immutable
class AuthState extends Equatable {
  final bool isAuthenticated;
  final AuthType? type;

  const AuthState({this.isAuthenticated = false, required this.type});

  AuthState copyWith({bool? isAuthenticated, AuthType? type}) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      type: type ?? this.type,
    );
  }

  @override
  List<Object?> get props => [isAuthenticated, type];
}
