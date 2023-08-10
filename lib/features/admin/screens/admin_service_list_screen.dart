import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/admin/screens/admin_sp_list_screen.dart';

class AdminServiceListScreen extends StatelessWidget {
  static const String route = '/admin/services';
  const AdminServiceListScreen({super.key});

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
          title: const Text('Services'),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('New'),
            ),
          ]),
      body: const Center(child: Text('Services you offer will be shown here')),
    );
  }
}
