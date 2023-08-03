import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/auth/provider/login/login_provider.dart';

import '../../../core/providers/providers.dart';

final formKey = GlobalKey<FormState>();

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key, this.returnURL});

  final String? returnURL;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final loginState = ref.read(loginProvider.notifier);

    final authState = ref.watch(authProvider);
    final authNotifier = ref.watch(authProvider.notifier);

    final router = GoRouter.of(context);
    final error = state.error;

    if (state.isSuccess && authState.isLoading == false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        router.go('/');
      });
    }

    if (authState.user != null && authState.isLoading == false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showPopup(context);
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Visibility(
          visible: state.isLoading,
          maintainState: false,
          maintainAnimation: false,
          replacement: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(children: [
                // error message
                if (error != null) Text(error),

                // text inputs
                TextFormField(
                  initialValue: state.email,
                  onChanged: (value) => loginState.updateEmail(value),
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) => loginState.validateEmail(),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  initialValue: state.password,
                  onChanged: (value) => loginState.updatePassword(value),
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) => loginState.validatePassword(),
                ),
                const SizedBox(height: 20),

                // login button
                SizedBox(
                    height: 40,
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () async {
                        await loginState.login();
                        authNotifier.getAuth();
                      },
                      child: const Text('Login'),
                    )),
              ]),
            ),
          ),
          child: SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.8),
              ),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          )),
    );
  }

  void _showPopup(BuildContext context) {
    final router = GoRouter.of(context);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Already Logged In'),
          content: const Text('No need to login since are already logged in..'),
          actions: [
            OutlinedButton(
              onPressed: () => router.go('/logout'),
              child: const Text('Logout'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                router.go('/');
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
