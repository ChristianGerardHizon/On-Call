import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/admin/screens/screens.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

List<RouteBase> buildAdminRoutes(ProviderRef<GoRouter> ref) {
  return [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          key: state.pageKey,
          child: AdminBaseScreen(child: child),
        );
      },
      routes: [
        GoRoute(
          path: AdminDashboardScreen.route,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: AdminDashboardScreen());
          },
        ),
        GoRoute(
          path: AdminSupportScreen.route,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: AdminSupportScreen());
          },
        ),
        GoRoute(
          path: AdminSPListScreen.route,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: AdminSPListScreen());
          },
        ),
        GoRoute(
          path: AdminServiceListScreen.route,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: AdminServiceListScreen());
          },
        ),
        GoRoute(
          path: AdminProfileScreen.route,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: AdminProfileScreen());
          },
        ),
      ],
    ),

    // service providers
    GoRoute(
      path: AdminSPCreateScreen.route,
      pageBuilder: (context, state) {
        return const NoTransitionPage(child: AdminSPCreateScreen());
      },
    ),
    GoRoute(
      path: AdminSPViewScreen.route,
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final id = extra['id'] as String?;

        return NoTransitionPage(child: AdminSPViewScreen(id: id));
      },
    ),

    // services
    GoRoute(
      path: AdminServiceCreateScreen.route,
      pageBuilder: (context, state) {
        return const NoTransitionPage(child: AdminServiceCreateScreen());
      },
    ),

    GoRoute(
      path: AdminServiceViewScreen.route,
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final id = extra['id'] as String?;

        return NoTransitionPage(child: AdminServiceViewScreen(id: id));
      },
    ),
  ];
}
