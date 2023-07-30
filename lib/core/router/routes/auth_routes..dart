import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> authRoutes = [
  GoRoute(
    name: 'login',
    path: '/login',
    builder: (context, state) => const Center(
      child: Text('Login'),
    ),
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) => const Center(
      child: Text('Register'),
    ),
  ),
  GoRoute(
    path: '/recovery',
    builder: (context, state) => const Center(
      child: Text('Recovery'),
    ),
  ),
  GoRoute(
    path: '/2fa',
    builder: (context, state) => const Center(
      child: Text('2FA'),
    ),
  ),
];
