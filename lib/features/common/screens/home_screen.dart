import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../../../core/providers/auth/auth.dart';
import '../providers/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenProvider);
    final authState = ref.read(authProvider.notifier);

    final router = GoRouter.of(context);

    // Triggers a refresh action on the home screen, simulates a loading
    // process, and then redirects the user to the search screen using Flutter
    // Riverpod state management and navigation.
    toRefresh() async {
      print({'refresh': await authState.getAuth()});
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
          title: ListTile(
            onTap: () {},
            title: const Text('123 Random Address Location',
                overflow: TextOverflow.ellipsis),
            subtitle: const Text('General Santos City'),
          ),
          actions: [
            const SizedBox(width: 8),
            IconButton(
              tooltip: 'Go to login',
              onPressed: () => router.go('/login'),
              icon: const Icon(MaterialCommunityIcons.account_circle, size: 30),
            ),
            const SizedBox(width: 15),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Select a service'),
                const SizedBox(height: 4),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Place holder for services',
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.maxFinite,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: toRefresh,
                    child: const Text('Find Nearest'),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );
    }
  }
}
