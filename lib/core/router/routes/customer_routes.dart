import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/common/screens/screens.dart';

List<RouteBase> customerRoutes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),

  GoRoute(
    path: '/serviceProvider',
    builder: (context, state) => const Center(
      child: Text('Service Provider Details Screen'),
    ),
  ),

  /// ..add additional routes that the customer can use
];
