import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_call/core/providers/providers.dart';

final appProvider = StateNotifierProvider<AppNotifier, AppState>((ref) {
  return AppNotifier();
});

class AppNotifier extends StateNotifier<AppState> {
  AppNotifier() : super(const AppState(initialized: false, theme: null));

  // initialize app. check login state. check selected theme
  void defaultTheme(BuildContext context) {
    final theme = Theme.of(context).copyWith(
      appBarTheme: AppBarTheme.of(context).copyWith(
        backgroundColor: Colors.white,
        titleTextStyle: GoogleFonts.openSans(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
      ),
      textTheme: GoogleFonts.openSansTextTheme(Typography.blackCupertino),
    );

    state = state.copyWith(theme: theme);
  }

  // initialize app. check login state. check selected theme
  Future<void> initialize(bool hasInitialized) async {
    state = state.copyWith(initialized: hasInitialized);
  }
}
