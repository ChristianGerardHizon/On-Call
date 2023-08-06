import 'package:flutter/material.dart';

class AdminAnalyticsScreen extends StatelessWidget {
  static const String route = '/admin/analytics';

  const AdminAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Analytics')),
      body: const Center(child: Text('Admin Analytics')),
    );
  }
}
