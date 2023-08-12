import 'package:flutter/material.dart';

class FormSubmitButton extends StatelessWidget {
  final Text label;
  final Function() onSubmit;

  final double? height;
  final double? width;

  const FormSubmitButton({
    super.key,
    required this.label,
    required this.onSubmit,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width,
      child: ElevatedButton(onPressed: onSubmit, child: label),
    );
  }
}
