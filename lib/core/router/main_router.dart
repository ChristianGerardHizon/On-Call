import 'package:core_package/entities/entities.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/providers/auth/auth.dart';
import 'package:on_call/core/router/router.dart';

import '../../features/common/screens/screens.dart';

final routerProvider = Provider<GoRouter>((ref) {
  List<RouteBase> routes = [...baseRoutes];
  String baseRoute = '/';

  final type = ref.read(authProvider).user?.type;

  if (type != null && type == UserType.admin) {
    routes = [...routes, ...adminRoutes];
  }

  if (type != null && type == UserType.customer) {
    routes = [...routes, ...customerRoutes];
  }

  if (type != null && type == UserType.serviceProvider) {
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
  final user = ref.read(authProvider).user;
  final type = ref.read(authProvider).type;
  final fullPath = state.fullPath ?? '';
  final authPaths = [];
  if (authPaths.contains(state.fullPath) && user == null) {
    final currentPath = Uri.encodeQueryComponent(fullPath);
    return '/login?returnURL=$currentPath';
  }

  if (fullPath == '' || type == UserType.admin) {
    return '/admin';
  }

  return null;
}
