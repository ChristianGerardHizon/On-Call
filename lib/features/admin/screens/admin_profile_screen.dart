import 'package:flutter/material.dart';

class AdminProfileScreen extends StatelessWidget {
  static const String route = '/admin/profile';
  const AdminProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Admin Profile Screen')),
    );
  }
}
