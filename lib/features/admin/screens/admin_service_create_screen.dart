import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/widgets/widgets.dart';

import '../providers/providers.dart';
import 'screens.dart';

final _formKey = GlobalKey<FormBuilderState>();

class AdminServiceCreateScreen extends ConsumerWidget {
  static const String route = '/admin/create-service';
  const AdminServiceCreateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);
    final state = ref.watch(serviceCreateProvider);

    ref.listen(serviceCreateProvider, (previous, next) {
      flog.d(state);
      if (next is ServiceCreateSuccess) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _showPopup(context);
        });
        return;
      }
    });

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
          router.go(AdminServiceListScreen.route);
        },
      ),
      title: const Text('New Service'),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('Save'),
        ),
      ],
    );
  }

  Widget buildFormBody(ServiceCreateState state, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Visibility(
        visible: state != const ServiceCreateState.loading(),
        replacement: const Center(child: CircularProgressIndicator()),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            buildFailedMessage(state),
            FormTextField(name: 'name', label: 'Service Name', validators: [
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(6),
              FormBuilderValidators.maxLength(255)
            ]),
            FormTextField(
                name: 'description',
                label: 'Description',
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(2),
                  FormBuilderValidators.maxLength(255)
                ]),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: FormBuilderDropdown(
                name: 'isPublic',
                initialValue: false,
                decoration: const InputDecoration(
                  labelText: 'Visibility',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: true, child: Text('Public')),
                  DropdownMenuItem(value: false, child: Text('Private')),
                ],
              ),
            ),
            FormSubmitButton(
              label: const Text('Save'),
              onSubmit: () {
                final state = _formKey.currentState;
                if (state!.saveAndValidate(focusOnInvalid: true)) {
                  ref.watch(serviceCreateProvider.notifier).save(state.value);
                }
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildFailedMessage(ServiceCreateState state) {
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

  void _showPopup(BuildContext context) {
    final router = GoRouter.of(context);

    showDialog(
      useRootNavigator: true,
      barrierDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('A new service was just created'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                if (router.canPop()) {
                  router.pop();
                } else {
                  router.go(AdminServiceListScreen.route);
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
