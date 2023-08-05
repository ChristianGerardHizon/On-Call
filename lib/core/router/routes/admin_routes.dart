import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/admin/screens/screens.dart';

import '../main_router.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

List<RouteBase> buildAdminRoutes(ProviderRef<GoRouter> ref) {
  return [
    GoRoute(
      path: '/admin',
      redirect: (context, state) => '/admin/a',
    ),
    GoRoute(
      path: '/admin',
      builder: (context, state) => const FlutterLogo(),
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return AdminBaseScreen(child: child);
          },
          routes: [
            // This screen is displayed on the ShellRoute's Navigator.
            GoRoute(
              path: 'a',
              builder: (context, state) {
                return const AdminDashboardScreen();
              },
            ),
            // Displayed ShellRoute's Navigator.
            GoRoute(
              path: 'b',
              builder: (BuildContext context, GoRouterState state) {
                return const AdminAnalyticsScreen();
              },
            ),
            GoRoute(
              path: 'c',
              builder: (BuildContext context, GoRouterState state) {
                return const AdminProfileScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ];
}
