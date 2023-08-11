import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:on_call/core/widgets/form_submit_button.dart';
import 'package:on_call/core/widgets/form_text_field.dart';

import '../providers/providers.dart';

final _formKey = GlobalKey<FormBuilderState>();

class RecoveryScreen extends ConsumerWidget {
  const RecoveryScreen({super.key});

  static String route = '/recovery';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FormBuilder(
      key: _formKey,
      child: Scaffold(
          appBar: AppBar(title: const Text('Recovery')),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // email
                  FormTextField(name: 'email', label: 'Email', validators: [
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                  const SizedBox(height: 20),
                  FormSubmitButton(
                    label: const Text('Send Recovery Email'),
                    onSubmit: () {
                      final state = _formKey.currentState;
                      if (state!.saveAndValidate(focusOnInvalid: true)) {
                        ref.watch(recoveryProd.notifier).register(state.value);
                      }
                    },
                  ),
                  // submit button
                ],
              ),
            ),
          )),
    );
  }
}
