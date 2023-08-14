import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/validators/custom_form_validators.dart';
import 'package:on_call/core/widgets/widgets.dart';

final _formKey = GlobalKey<FormBuilderState>();

class ChangePasswordScreen extends ConsumerWidget {
  const ChangePasswordScreen({super.key, this.returnURL});

  static String route = '/change-password';

  final String? returnURL;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);

    return FormBuilder(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Change Password'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Handle the back arrow press here
                // You can navigate back or perform any other action

                if (returnURL != null) {
                  router.go(returnURL!);
                  return;
                }
                if (router.canPop()) {
                  router.pop();
                } else {
                  router.go('/');
                }
              },
            )),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            const SizedBox(height: 20),
            FormTextField(
                name: 'password',
                label: 'Password',
                obscure: true,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6),
                ]),
            FormTextField(
                name: 'passwordConfirm',
                label: 'Re Type Password',
                obscure: true,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6),
                  (val) => CustomFormValidators.matchWithField(
                        val,
                        _formKey.currentState,
                      )
                ]),
            FormSubmitButton(
              label: const Text('Change'),
              onSubmit: () {
                final state = _formKey.currentState;
                if (state!.saveAndValidate(focusOnInvalid: true)) {}
              },
            )
          ],
        ),
      ),
    );
  }
}
