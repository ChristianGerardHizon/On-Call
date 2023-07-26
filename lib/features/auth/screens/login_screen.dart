import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(children: [
          const TextField(),
          const TextField(),
          OutlinedButton(onPressed: () {}, child: const Text('Login')),
        ]),
      ),
    );
  }
}
