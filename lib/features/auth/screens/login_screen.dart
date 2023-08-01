import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/auth/provider/login/login_provider.dart';

import '../../../core/providers/providers.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key, this.returnURL});

  final String? returnURL;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final loginProd = ref.read(loginProvider.notifier);

    final authProd = ref.read(authProvider.notifier);
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Builder(
        builder: (context) {
          if (state == LoginState.loading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Center(
              child: Column(children: [
                const TextField(),
                const TextField(),
                OutlinedButton(
                  onPressed: () async {
                    await loginProd.login(email: '', password: '');
                    authProd.getAuth();
                  },
                  child: const Text('Login'),
                ),
              ]),
            );
          }
        },
      ),
    );
  }
}
