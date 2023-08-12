import 'package:core_package/core_package.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/providers/app/app.dart';
import 'package:on_call/core/providers/auth/auth.dart';
import 'package:on_call/core/router/router.dart';
import 'package:on_call/features/auth/screens/logout_screen.dart';

import '../../features/common/screens/screens.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>((ref) {
  final adminRoutes = buildAdminRoutes(ref);

  List<RouteBase> routes = [...baseRoutes, ...customerRoutes, ...adminRoutes];
  String initialRoute = SplashScreen.route;
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    redirect: (context, state) => globalRedirect(context, state, ref),
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
  final isInitialized = ref.read(appProvider).initialized;
  final fullPath = state.fullPath ?? '';
  final segments = state.uri.pathSegments;
  final isLoggedIn = user != null;
  final isAdmin = user?.type == UserType.admin;
  final isServiceProvider = user?.type == UserType.serviceProvider;

  if (fullPath == LogoutScreen.route) {
    return null;
  }

  if (isInitialized == false) {
    return SplashScreen.route;
  }

  if (isLoggedIn && isServiceProvider && user.isActive == false) {
    return '/pending';
  }

  if (isLoggedIn && isAdmin && !segments.contains('admin')) {
    return '/admin';
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
