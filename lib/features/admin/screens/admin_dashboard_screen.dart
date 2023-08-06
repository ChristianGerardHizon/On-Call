import 'package:core_package/logger/logger.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/main.dart';

import '../widgets/widgets.dart';

class AdminDashboardScreen extends StatelessWidget {
  static const String route = '/admin';
  const AdminDashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

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

  test() async {
    // final successOrFail = await adminRepo.getServiceProvider("g35v9pah9ppa07d");

    // final successOrFail = await adminRepo.getServiceProviders();
    // final successOrFail = await adminRepo.createServiceProvider(
    //   const CreateServiceProviderParams(
    //     userRef: 'bopofpb8tde0jhn',
    //     publicName: 'Dude',
    //     isPublic: false,
    //   ),
    // );
    // final sp = successOrFail.fold((l) => null, (r) => r);

    // if (sp != null) {
    //   final updatedSP = sp.copyWith(publicName: 'Test Services ');
    //   final successOrFail2 = await adminRepo.updateServiceProviders(updatedSP);
    //   successOrFail2.fold(
    //     (l) => flog.e({'error': l}),
    //     (r) => flog.d({'success': r}),
    //   );
    // }
  }
}
