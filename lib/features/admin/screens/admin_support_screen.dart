import 'package:flutter/material.dart';

class AdminSupportScreen extends StatelessWidget {
  static const String route = '/admin/support';

  const AdminSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ticket Support')),
      body: const Center(
          child: Text('Place Here all the available tickets for admin')),
    );
  }
}
