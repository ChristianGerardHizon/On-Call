import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/providers/app/app.dart';
import 'package:on_call/core/providers/auth/auth.dart';
import 'package:on_call/core/router/router.dart';

import '../../features/common/screens/screens.dart';

final routerProvider = Provider<GoRouter>((ref) {
  List<RouteBase> routes = [...baseRoutes, ...customerRoutes];
  String initialRoute = '/splash';
  return GoRouter(
    redirect: (context, state) {
      return globalRedirect(context, state, ref);
    },
    initialLocation: initialRoute,
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
  final isInitialized = ref.read(appProvider).initialized;
  final fullPath = state.fullPath ?? '';
  final authPaths = [];

  if (fullPath == '/logout') {
    return null;
  }

  if (isInitialized == false) {
    return '/splash';
  }

  if (user != null && user.isActive == false) {
    return '/pending';
  }

  if (fullPath == '/login' && user != null) {
    return '/login?isl=true';
  }

  return null;
}

/*
  return null;
  if (authPaths.contains(state.fullPath) && user == null) {
    final currentPath = Uri.encodeQueryComponent(fullPath);
    return '/login?returnURL=$currentPath';
  }

  if (fullPath == '' || type == UserType.admin) {
    return '/';
  }

  return null;
*/
