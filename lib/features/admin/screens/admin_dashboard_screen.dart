import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AdminDashboardScreen extends StatelessWidget {
  static const String route = '/admin';
  const AdminDashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: LineChartWidget(),
            ),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: LineChartWidget(),
            )
          ],
        ),
      ),
    );
  }

  test() async {}
}
