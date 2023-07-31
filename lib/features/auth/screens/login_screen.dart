import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key, this.returnURL});

  final String? returnURL;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(children: [
          const TextField(),
          const TextField(),
          OutlinedButton(
            onPressed: () {
              router.go(returnURL ?? '/');
            },
            child: const Text('Login'),
          ),
        ]),
      ),
    );
  }
}
