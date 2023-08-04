import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../features/admin/screens/screens.dart';

List<RouteBase> buildAdminRoutes(ProviderRef<GoRouter> ref) {
  return [
    GoRoute(
      path: '/admin',
      builder: (context, state) => const AdminDashboardScreen(),
      routes: [
        GoRoute(
          path: 'analytics',
          builder: (context, state) => const AdminAnalyticsScreen(),
        ),
        GoRoute(
          path: 'service-providers',
          builder: (context, state) => const Center(
            child: Text('Admin Service Providers Panel'),
          ),
        ),
        GoRoute(
          path: 'services',
          builder: (context, state) => const Center(
            child: Text('Admin Services Panel'),
          ),
        ),
        GoRoute(
          path: 'customers',
          builder: (context, state) => const Center(
            child: Text('Admin Customer Panel'),
          ),
        ),
      ],
    ),
  ];
}
