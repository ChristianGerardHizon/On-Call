import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../typedefs/typedefs.dart';

class FormTextField extends StatelessWidget {
  final String name;
  final String label;
  final bool obscure;
  final ValidatorItem? validators;

  const FormTextField({
    super.key,
    required this.name,
    required this.label,
    this.obscure = false,
    this.validators,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: FormBuilderTextField(
        name: name,
        obscureText: obscure,
        decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(),
        ),
        validator: FormBuilderValidators.compose(validators ?? []),
      ),
    );
  }
}
