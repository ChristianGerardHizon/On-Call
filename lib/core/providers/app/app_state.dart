import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class AppState extends Equatable {
  final ThemeData theme;

  const AppState({required this.theme});

  AppState copyWith({ThemeData? theme}) {
    return AppState(theme: theme ?? this.theme);
  }

  @override
  List<Object?> get props => [theme];
}
