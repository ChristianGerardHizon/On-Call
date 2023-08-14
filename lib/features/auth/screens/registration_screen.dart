import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

import '../../../core/providers/providers.dart';
import '../../../core/validators/validators.dart';
import '../../../core/widgets/widgets.dart';
import '../providers/providers.dart';

final _formKey = GlobalKey<FormBuilderState>();

class RegistrationScreen extends ConsumerWidget {
  const RegistrationScreen({super.key, this.userType = UserType.customer});

  static String route = '/login/register';
  static String routeAsSP = '/login/register-service-provider';

  final UserType userType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);

    ref.watch(registerProd.notifier).addListener((state) async {
      if (state is RegistrationSuccess) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await ref.watch(authProvider.notifier).getAuth();
          router.go('/');
        });
      }
    });

    String _getUserType() {
      if (userType == UserType.customer) {
        return 'Account';
      }
      if (userType == UserType.serviceProvider) {
        return 'Service Provider';
      }
      return '';
    }

    Widget buildFailedMessage(RegisterScreenState state) {
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

    return FormBuilder(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(title: const Text('Registration')),
        body: Visibility(
          visible: ref.watch(registerProd).maybeWhen(
                orElse: () => true,
                loading: () => false,
                success: () => false,
              ),
          replacement: const Center(child: CircularProgressIndicator()),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: [
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Create your ${_getUserType()}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),

              buildFailedMessage(ref.watch(registerProd)),

              // buildFailedMessage(state),
              FormTextField(name: 'email', label: 'Email', validators: [
                FormBuilderValidators.required(),
                FormBuilderValidators.email(),
              ]),

              if (userType == UserType.serviceProvider)
                FormTextField(
                    name: 'publicName',
                    label: 'Public Name',
                    validators: [FormBuilderValidators.required()]),
              const SizedBox(height: 10),

              FormTextField(
                  name: 'firstName',
                  label: 'First Name',
                  validators: [FormBuilderValidators.required()]),
              FormTextField(
                  name: 'lastName',
                  label: 'Last Name',
                  validators: [FormBuilderValidators.required()]),

              const SizedBox(height: 10),

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
                  label: 'Password Confirm',
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
                label: const Text('Register'),
                onSubmit: () {
                  final state = _formKey.currentState;
                  if (state!.saveAndValidate(focusOnInvalid: true)) {
                    ///
                    /// customer
                    ///
                    if (userType == UserType.customer) {
                      ref.watch(registerProd.notifier).register(state.value);
                      return;
                    }

                    ///
                    /// Service Provider
                    ///
                    if (userType == UserType.serviceProvider) {
                      ref
                          .watch(registerProd.notifier)
                          .registerAsServiceProvider(state.value);
                      return;
                    }
                  }
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
