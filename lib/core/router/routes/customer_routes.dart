import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> customerRoutes = [
  GoRoute(
    path: '/serviceProvider',
    builder: (context, state) => const Center(
      child: Text('Service Provider Details Screen'),
    ),
  ),

  /// ..add additional routes that the customer can use
];
