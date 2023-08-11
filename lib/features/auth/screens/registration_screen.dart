import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../core/validators/validators.dart';
import '../../../core/widgets/widgets.dart';

final _formKey = GlobalKey<FormBuilderState>();

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  static String route = '/register';

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(title: const Text('Registration')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          children: [
            const Text('Create your account'),

            const SizedBox(height: 20),
            // buildFailedMessage(state),
            FormTextField(name: 'email', label: 'Email', validators: [
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),

            FormTextField(
                name: 'firstName',
                label: 'First Name',
                validators: [FormBuilderValidators.required()]),
            FormTextField(
                name: 'lastName',
                label: 'Last Name',
                validators: [FormBuilderValidators.required()]),
            FormTextField(
                name: 'password',
                label: 'Password',
                obscure: true,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6),
                ]),
            FormTextField(
                name: 'rePassword',
                label: 'Re Type Password',
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6),
                  (val) => CustomFormValidators.matchWithField(
                        val,
                        _formKey.currentState,
                        'password',
                        error: 'Does not match password',
                      )
                ]),
            FormSubmitButton(
              label: const Text('Register'),
              onSubmit: () {
                final state = _formKey.currentState;
                if (state!.saveAndValidate(focusOnInvalid: true)) {
                  // ref.watch(spCreateProvider.notifier).register(state.value);
                }
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
