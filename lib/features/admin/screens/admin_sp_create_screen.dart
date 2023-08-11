import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/validators/validators.dart';
import 'package:on_call/core/widgets/widgets.dart';
import 'package:on_call/features/admin/screens/admin_sp_list_screen.dart';

import '../providers/providers.dart';

final _formKey = GlobalKey<FormBuilderState>();

class AdminSPCreateScreen extends ConsumerWidget {
  static const String route = '/admin/create-service-provider';

  const AdminSPCreateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);
    final state = ref.watch(spCreateProvider);

    return FormBuilder(
      key: _formKey,
      child: Scaffold(
        appBar: buildAppBar(context, router),
        body: buildFormBody(state, ref),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context, GoRouter router) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          router.go(AdminSPListScreen.route);
        },
      ),
      title: const Text('New  Service Provider'),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('Save'),
        ),
      ],
    );
  }

  Widget buildFormBody(SpCreateState state, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Visibility(
        visible: state != const SpCreateState.loading(),
        replacement: const Center(child: CircularProgressIndicator()),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            buildFailedMessage(state),
            FormTextField(name: 'email', label: 'Email', validators: [
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
            FormTextField(
                name: 'publicName',
                label: 'Public Name',
                validators: [FormBuilderValidators.required()]),
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
                  ref.watch(spCreateProvider.notifier).register(state.value);
                }
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildFailedMessage(SpCreateState state) {
    return state.maybeWhen(
      orElse: () => const SizedBox(),
      failed: (status) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          width: double.maxFinite,
          child: ErrorMessage(message: status),
        ),
      ),
    );
  }
}
