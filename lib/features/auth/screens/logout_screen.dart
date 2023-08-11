import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/providers/providers.dart';

class LogoutScreen extends ConsumerWidget {
  const LogoutScreen({super.key});

  static String route = '/logout';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    final notifier = ref.read(authProvider.notifier);
    final router = GoRouter.of(context);
    if (state.user != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (state.user != null) {
          await notifier.clearAuth();
          router.go('/');
        }
      });
    }

    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text('Logging out...'),
          ],
        ),
      ),
    );
  }
}
