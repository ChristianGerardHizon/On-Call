import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> customerRoutes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const Center(
      child: Text('Admin Dashboard'),
    ),
  ),
];
