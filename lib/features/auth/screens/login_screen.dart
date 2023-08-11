import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/auth/providers/login/login_provider.dart';
import 'package:on_call/core/widgets/error_message.dart';
import 'package:on_call/features/auth/screens/recovery_screen.dart';

import '../../../core/providers/providers.dart';
import 'screens.dart';

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

    Future login() async {
      await loginState.login();
      authNotifier.getAuth();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Visibility(
        visible: state.isLoading || state.isSuccess,
        maintainState: false,
        maintainAnimation: false,
        replacement: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // error message
                    if (error != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: SizedBox(
                          width: double.maxFinite,
                          child: ErrorMessage(message: error),
                        ),
                      ),

                    // text inputs
                    TextFormField(
                      onFieldSubmitted: (value) => login(),
                      initialValue: state.email,
                      onChanged: (value) => loginState.updateEmail(value),
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (value) => loginState.validateEmail(),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      onFieldSubmitted: (value) => login(),
                      initialValue: state.password,
                      onChanged: (value) => loginState.updatePassword(value),
                      decoration: const InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      validator: (value) => loginState.validatePassword(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              router.go(RecoveryScreen.route);
                            },
                            child: const Text('Forgot Password?'),
                          ),
                          const SizedBox()
                        ]),
                    const SizedBox(height: 20),

                    // login button
                    SizedBox(
                      height: 40,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: login,
                        child: const Text('Login'),
                      ),
                    ),

                    const SizedBox(height: 10),

                    SizedBox(
                      height: 40,
                      child: TextButton(
                        onPressed: () {
                          router.go('/');
                        },
                        child: const Text('Back'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: double.maxFinite,
              child: TextButton(
                onPressed: () {
                  router.go(RegistrationScreen.route);
                },
                child: const Text('Register here.'),
              ),
            ),
          ],
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
        ),
      ),
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
