import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/admin/screens/admin_sp_list_screen.dart';

class AdminServiceViewScreen extends StatelessWidget {
  static const String route = '/admin/service';
  const AdminServiceViewScreen({super.key, this.id});
  final String? id;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Handle the back arrow press here
              // You can navigate back or perform any other action
              router.go(AdminSPListScreen.route);
            },
          ),
          title: const Text('New  Service Provider'),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Save'),
            ),
          ]),
      body: const Center(child: Text('Create Service Providers')),
    );
  }
}
