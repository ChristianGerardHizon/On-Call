import 'package:core_package/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/auth/screens/screens.dart';
import 'package:on_call/features/common/screens/screens.dart';

List<RouteBase> baseRoutes = [
  // authentication routes
  GoRoute(
    name: 'login',
    path: '/login',
    builder: (context, state) {
      state.uri.queryParameters;
      final params = state.uri.queryParameters;
      final rtURL = params['returnURL'];

      return LoginScreen(returnURL: rtURL);
    },
    routes: [
      GoRoute(
        path: RegistrationScreen.route.replaceAll('/login/', ''),
        builder: (context, state) => const RegistrationScreen(),
      ),
      GoRoute(
        path: RegistrationScreen.routeAsSP.replaceAll('/login/', ''),
        builder: (context, state) => const RegistrationScreen(
          userType: UserType.serviceProvider,
        ),
      ),
      GoRoute(
        path: RecoveryScreen.route.replaceAll('/login/', ''),
        builder: (context, state) => const RecoveryScreen(),
      ),
    ],
  ),
  GoRoute(
    path: LogoutScreen.route,
    builder: (context, state) => const LogoutScreen(),
  ),

  GoRoute(
    path: PendingScreen.route,
    builder: (context, state) => const PendingScreen(),
  ),
  GoRoute(
    path: '/2fa',
    builder: (context, state) => const Center(
      child: Text('2FA'),
    ),
  ),

  // splash screen
  GoRoute(
    path: SplashScreen.route,
    builder: (context, state) => const SplashScreen(),
  ),

  // unauthenticated screens
  GoRoute(
    path: '/search',
    builder: (context, state) => const HomeScreen(),
    routes: [
      GoRoute(
        path: 'search',
        builder: (context, state) => const SearchScreen(),
      ),
    ],
  ),
];
