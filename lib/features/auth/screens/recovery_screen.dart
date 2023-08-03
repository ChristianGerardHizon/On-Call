import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Center(
        child: Column(children: [
          // email
          const TextField(),
          // submit button
          OutlinedButton(
            onPressed: () {},
            child: const Text('Send Recovery'),
          ),
        ]),
      ),
    );
  }
}
