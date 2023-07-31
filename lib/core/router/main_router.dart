import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/enums/enums.dart';
import 'package:on_call/core/providers/auth/auth.dart';
import 'package:on_call/core/router/router.dart';

import '../../features/common/screens/screens.dart';

final routerProvider = Provider<GoRouter>((ref) {
  List<RouteBase> routes = [...baseRoutes];
  String baseRoute = '/';

  final type = ref.read(authProvider).type;
  final isAuthenticated = ref.read(authProvider).isAuthenticated;

  if (isAuthenticated && type == AuthType.admin) {
    routes = [...routes, ...adminRoutes];
  }

  if (isAuthenticated && type == AuthType.customer) {
    routes = [...routes, ...customerRoutes];
  }

  if (isAuthenticated && type == AuthType.serviceProvider) {
    routes = [...routes, ...spRoutes];
  }

  return GoRouter(
    redirect: (context, state) {
      return globalRedirect(context, state, ref);
    },
    initialLocation: baseRoute,
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

  print({type: type});

  if (fullPath == '' || type == AuthType.admin) {
    return '/admin';
  }

  return null;
}
