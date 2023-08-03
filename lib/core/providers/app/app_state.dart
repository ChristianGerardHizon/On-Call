import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class AppState extends Equatable {
  final ThemeData? theme;
  final bool initialized;

  const AppState({required this.theme, required this.initialized});

  AppState copyWith({ThemeData? theme, bool? initialized}) {
    return AppState(
      theme: theme ?? this.theme,
      initialized: initialized ?? this.initialized,
    );
  }

  @override
  List<Object?> get props => [theme, initialized];
}
