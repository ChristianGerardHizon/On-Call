import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> customerRoutes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const Center(
      child: Text('Home Screen'),
    ),
  ),
  GoRoute(
    path: '/searchRequest',
    builder: (context, state) => const Center(
      child: Text('Search Results Screen'),
    ),
  ),
  GoRoute(
    path: '/serviceProvider',
    builder: (context, state) => const Center(
      child: Text('Service Provider Details Screen'),
    ),
  ),
  /// ..add additional routes that the customer can use
];
