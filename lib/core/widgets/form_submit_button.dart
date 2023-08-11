import 'package:flutter/material.dart';

class FormSubmitButton extends StatelessWidget {
  final Text label;
  final Function() onSubmit;

  const FormSubmitButton({
    super.key,
    required this.label,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(onPressed: onSubmit, child: label),
    );
  }
}
