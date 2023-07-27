import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenProvider);
    final router = GoRouter.of(context);

    // Triggers a refresh action on the home screen, simulates a loading
    // process, and then redirects the user to the search screen using Flutter
    // Riverpod state management and navigation.
    toRefresh() async {
      await ref.read(homeScreenProvider.notifier).fakeLoadAndRedirect();
      router.go('/search');
    }

    if (state.isLoading) {
      // Show a loading indicator or splash screen here
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: toRefresh,
                child: const Text('Search'),
              ),
            ],
          ),
        ),
      );
    }
  }
}
