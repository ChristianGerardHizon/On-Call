import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/providers/providers.dart';

class PendingScreen extends ConsumerWidget {
  const PendingScreen({super.key});

  static String route = '/pending';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    final notifier = ref.read(authProvider.notifier);
    final router = GoRouter.of(context);

    if (state.user?.isActive ?? false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        router.go('/');
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Visibility(
          visible: state.isLoading == false,
          maintainAnimation: false,
          maintainState: false,
          replacement: const Center(child: CircularProgressIndicator()),
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Account is still pending.',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 40),

                  const Text(
                    'Your account is still pending approval by the admin. Please contact admin to continue on using the app.',
                  ),
                  const SizedBox(height: 40),
                  // logout button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          notifier.getAuth(delay: const Duration(seconds: 1));
                        },
                        child: const Text('Refresh'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          router.go('/logout');
                        },
                        child: const Text('Logout'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
