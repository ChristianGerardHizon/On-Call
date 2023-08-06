import 'package:flutter/material.dart';

class TextLoader extends StatelessWidget {
  const TextLoader({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularProgressIndicator(),
        SizedBox(height: 20),
        Text('Loading...')
      ],
    );
  }
}
