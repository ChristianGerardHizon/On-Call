import 'package:flutter/material.dart';

class CreateTransactionScreen extends StatelessWidget {
  const CreateTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Transaction'),
      ),
      body: const Center(child: Text('Create a Transaction')),
    );
  }
}
