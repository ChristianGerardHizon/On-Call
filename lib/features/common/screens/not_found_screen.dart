import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('404'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Page was not found',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              onPressed: () {
                router.go('/');
              },
              child: const Text('Return to home'),
            )
          ],
        ),
      ),
    );
  }
}
