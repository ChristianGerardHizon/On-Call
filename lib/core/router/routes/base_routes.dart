import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/auth/screens/screens.dart';
import 'package:on_call/features/common/screens/screens.dart';

List<RouteBase> baseRoutes = [
  // authentication routes
  GoRoute(
    name: 'login',
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) => const RegistrationScreen(),
  ),
  GoRoute(
    path: '/recovery',
    builder: (context, state) => const RecoveryScreen(),
  ),
  GoRoute(
    path: '/2fa',
    builder: (context, state) => const Center(
      child: Text('2FA'),
    ),
  ),

  // unauthenticated screens
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
    routes: [
      GoRoute(
        path: 'search',
        builder: (context, state) => const SearchScreen(),
      ),
    ],
  ),
];
