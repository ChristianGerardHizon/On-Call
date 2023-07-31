import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> spRoutes = [
  GoRoute(
    path: '/service-order',
    redirect: (context, state) => '/not-found',
  ),
  GoRoute(
    path: '/service-order',
    builder: (context, state) => const FlutterLogo(),
    routes: [
      GoRoute(
        path: 'request',
        builder: (context, state) => const Center(
          child: Text('request'),
        ),
      ),
      GoRoute(
        path: 'details',
        builder: (context, state) => const Center(
          child: Text('details'),
        ),
      ),
      GoRoute(
        path: 'chat',
        builder: (context, state) => const Center(
          child: Text('chat'),
        ),
      ),
      GoRoute(
        path: 'payment',
        builder: (context, state) => const Center(
          child: Text('payment'),
        ),
      ),
    ],
  ),
];
