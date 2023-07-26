import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Center(
        child: Column(children: [
          const TextField(),
          const TextField(),
          OutlinedButton(onPressed: () {}, child: const Text('Register')),
        ]),
      ),
    );
  }
}
