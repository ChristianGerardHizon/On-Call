import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenProvider =
    StateNotifierProvider<HomeScreenNotifier, bool>((ref) {
  return HomeScreenNotifier();
});

class HomeScreenNotifier extends StateNotifier<bool> {
  HomeScreenNotifier() : super(false);

  Future<void> fakeLoadAndRedirect() async {
    state = true;

    await Future.delayed(
        const Duration(seconds: 3)); // Simulating a 3-second loading time
    state = false;
  }
}
