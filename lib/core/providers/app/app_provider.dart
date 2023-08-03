import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_call/core/providers/providers.dart';

final appProvider = StateNotifierProvider<AppNotifier, AppState>((ref) {
  return AppNotifier();
});

class AppNotifier extends StateNotifier<AppState> {
  AppNotifier() : super(const AppState(initialized: false, theme: null));

  // initialize app. check login state. check selected theme
  Future<void> initialize(bool hasInitialized) async {
    state = state.copyWith(initialized: hasInitialized);
  }
}
