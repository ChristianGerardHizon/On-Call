import 'package:flutter/material.dart';

class UpdateTransactionScreen extends StatelessWidget {
  const UpdateTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Transaction'),
      ),
      body: const Center(child: Text('Update a Transaction')),
    );
  }
}
