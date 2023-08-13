import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../typedefs/typedefs.dart';

class FormTextField extends StatelessWidget {
  final String name;
  final String label;
  final bool? obscure;
  final EdgeInsets? padding;
  final ValidatorItem? validators;
  final int? minLines;
  final int? maxLines;

  const FormTextField({
    super.key,
    required this.name,
    required this.label,
    this.obscure,
    this.validators,
    this.padding,
    this.minLines,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 20),
      child: FormBuilderTextField(
        name: name,
        obscureText: obscure == null ? false : obscure!,
        decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(),
        ),
        validator: FormBuilderValidators.compose(validators ?? []),
      ),
    );
  }
}
