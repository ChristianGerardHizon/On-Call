import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/enums/auth_type.dart';
import 'package:on_call/core/providers/auth/auth.dart';
import 'package:on_call/core/router/router.dart';

import '../../features/common/screens/screens.dart';

final routerProvider = Provider<GoRouter>((ref) {
  List<RouteBase> routes = [
    GoRoute(
      path: '/login',
      builder: (context, state) => const Center(
        child: Text('Admin Analytics'),
      ),
    ),
    GoRoute(
      path: '/recovery',
      builder: (context, state) => const Center(
        child: Text('Admin Analytics'),
      ),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const Center(
        child: Text('Admin Analytics'),
      ),
    ),
  ];

  final type = ref.read(authProvider).type;
  final isAuthenticated = ref.read(authProvider).isAuthenticated;

  if (isAuthenticated && type == AuthType.admin) {
    routes = [...routes, ...adminRoutes];
  }

  return GoRouter(
    redirect: (context, state) {
      return globalRedirect(context, state, ref);
    },
    routes: routes,
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});

globalRedirect(
  BuildContext context,
  GoRouterState state,
  ProviderRef<GoRouter> ref,
) {
  final isAuth = ref.read(authProvider).isAuthenticated;
  final type = ref.read(authProvider).type;
  final fullPath = state.fullPath ?? '';
  final authPaths = [];
  if (authPaths.contains(state.fullPath) && isAuth == false) {
    final currentPath = Uri.encodeQueryComponent(fullPath);
    return '/login?returnURL=$currentPath';
  }

  if (fullPath == '' || type == AuthType.admin) {
    return '/';
  }

  return null;
}
