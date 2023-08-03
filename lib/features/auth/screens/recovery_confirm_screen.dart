import 'package:flutter/material.dart';

class RecoveryConfirmScreen extends StatelessWidget {
  const RecoveryConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recovery Confirm')),
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
