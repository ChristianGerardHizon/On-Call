import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> adminRoutes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const Center(
      child: Text('Admin Dashboard'),
    ),
  ),
  GoRoute(
    path: '/analytics',
    builder: (context, state) => const Center(
      child: Text('Admin Analytics'),
    ),
  ),
  GoRoute(
    path: '/service-providers',
    builder: (context, state) => const Center(
      child: Text('Admin Service Providers Panel'),
    ),
  ),
  GoRoute(
    path: '/services',
    builder: (context, state) => const Center(
      child: Text('Admin Services Panel'),
    ),
  ),
  GoRoute(
    path: '/customers',
    builder: (context, state) => const Center(
      child: Text('Admin Customer Panel'),
    ),
  ),
];
