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
              height: 180,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: HeaderCard(
                  title: 'Support Tickets',
                  subtitle: '0',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10),
                    Text('Daily User Requests'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 200,
                      width: double.maxFinite,
                      child: LineChartWidget(),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10),
                    Text('Daily Completed Requests'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 200,
                      width: double.maxFinite,
                      child: LineChartWidget(),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10),
                    Text('User Sign Up'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 200,
                      width: double.maxFinite,
                      child: LineChartWidget(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  test() async {}
}
