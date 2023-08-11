import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
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

    const error = 'Something of an error..';

    return FormBuilder(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Handle the back arrow press here
                // You can navigate back or perform any other action
                router.go(AdminSPListScreen.route);
              },
            ),
            title: const Text('New  Service Provider'),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            children: [
              const SizedBox(height: 20),

              if (error != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ErrorMessage(message: error),
                  ),
                ),
              const SizedBox(height: 20),

              // Email
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FormBuilderTextField(
                  name: 'email',
                  decoration: const InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                ),
              ),

              // public name
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FormBuilderTextField(
                  name: 'publicName',
                  decoration: const InputDecoration(
                    label: Text('Public Name'),
                    border: OutlineInputBorder(),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
              ),

              // first name
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FormBuilderTextField(
                  name: 'firstName',
                  decoration: const InputDecoration(
                    label: Text('First Name'),
                    border: OutlineInputBorder(),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
              ),

              // last name
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FormBuilderTextField(
                  name: 'lastName',
                  decoration: const InputDecoration(
                    label: Text('Last Name'),
                    border: OutlineInputBorder(),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FormBuilderTextField(
                  name: 'password',
                  decoration: const InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(6),
                  ]),
                  obscureText: true, // Hide password input
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FormBuilderTextField(
                  name: 'rePassword',
                  decoration: const InputDecoration(
                    label: Text('Re-Password'),
                    border: OutlineInputBorder(),
                  ),
                  validator: (val) {
                    final password =
                        _formKey.currentState?.fields['password']?.value;
                    if (val != password) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  obscureText: true, // Hide password input
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  final state = _formKey.currentState;
                  if (state != null) {
                    state.saveAndValidate(focusOnInvalid: true);
                    ref.watch(spCreateProvider.notifier).register(state.value);
                  }
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
