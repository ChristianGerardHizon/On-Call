import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Center(
        child: Column(children: [
          // name
          const TextField(),
          // email
          const TextField(),
          // password
          const TextField(),
          // re password
          const TextField(),
          // submit buttoon
          OutlinedButton(
            onPressed: () {},
            child: const Text('Register'),
          ),
        ]),
      ),
    );
  }
}
