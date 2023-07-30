import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/enums/auth_type.dart';
import 'package:on_call/core/providers/auth/auth.dart';
import 'package:on_call/core/router/router.dart';

import '../../features/common/screens/screens.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    redirect: (context, state) => globalRedirect(context, state, ref),
    routes: [
      ...adminRoutes,
      ...customerRoutes,
      ...authRoutes,
      ...serviceOrderRoutes,
    ],
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
    return '/admin';
  }

  return null;
}
