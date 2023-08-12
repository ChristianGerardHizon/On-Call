import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

import '../../../core/providers/providers.dart';
import '../../../core/widgets/widgets.dart';
import '../providers/providers.dart';
import 'screens.dart';

final _formKey = GlobalKey<FormBuilderState>();

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key, this.returnURL});

  final String? returnURL;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);
    final loginProd = ref.watch(loginScreenProd);

    if (ref.read(loginScreenProd) is LoginScreenAuthenticated) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showPopup(context);
      });
    }
    ref.listen(loginScreenProd, (old, state) {
      flog.d(state);
      if (state is LoginScreenSuccess) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await ref.watch(authProvider.notifier).getAuth();
          router.go('/');
        });
        return;
      }

      if (state is LoginScreenAuthenticated) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _showPopup(context);
        });
        return;
      }
    });

    return FormBuilder(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => router.canPop() ? router.pop() : router.go('/'),
          ),
        ),
        body: Visibility(
          visible: loginProd.maybeWhen(
            orElse: () => true,
            loading: () => false,
            success: () => false,
          ),
          maintainState: false,
          maintainAnimation: false,
          replacement: SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.8),
              ),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // error message
                      buildFailedMessage(loginProd),

                      FormTextField(
                          name: 'email',
                          label: 'Email',
                          validators: [
                            FormBuilderValidators.required(),
                            FormBuilderValidators.email(),
                          ],
                          padding: const EdgeInsets.only(bottom: 10)),

                      FormTextField(
                          name: 'password',
                          label: 'Password',
                          padding: const EdgeInsets.only(bottom: 10),
                          obscure: true,
                          validators: [
                            FormBuilderValidators.required(),
                            FormBuilderValidators.minLength(6),
                          ]),

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
                      FormSubmitButton(
                        width: double.maxFinite,
                        label: const Text('Login'),
                        onSubmit: () {
                          final state = _formKey.currentState;
                          if (state!.saveAndValidate(focusOnInvalid: true)) {
                            ref
                                .watch(loginScreenProd.notifier)
                                .login(state.value);
                          }
                        },
                      ),

                      const SizedBox(height: 20),

                      TextButton(
                        onPressed: () {
                          router.go(RegistrationScreen.routeAsSP);
                        },
                        child: const Text('Register as Service Provider'),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: double.maxFinite,
                child: TextButton(
                  onPressed: () => router.go(RegistrationScreen.route),
                  child: RichText(
                    text: const TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Register here',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue, // Customize the color as needed
                          ),
                        ),
                        // You can add more TextSpan widgets if needed
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFailedMessage(LoginScreenState state) {
    return state.maybeWhen(
      orElse: () => const SizedBox(),
      failed: (status) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          width: double.maxFinite,
          child: ErrorMessage(message: status ?? 'Something went wrong'),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    final router = GoRouter.of(context);

    showDialog(
      useRootNavigator: true,
      barrierDismissible: false,
      useSafeArea: true,
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
                if (router.canPop()) {
                  router.pop();
                } else {
                  router.go('/');
                }
              },
              child: const Text('Return'),
            ),
          ],
        );
      },
    );
  }
}
