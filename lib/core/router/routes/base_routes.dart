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
  ),
  GoRoute(
    name: 'logout',
    path: '/logout',
    builder: (context, state) => const LogoutScreen(),
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
    path: '/pending',
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
    name: 'splash',
    path: '/splash',
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
void _showPopup(BuildContext context) {
  final router = GoRouter.of(context);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Already Logged In'),
        content: const Text('No need to login since are already logged in..'),
        actions: [
          OutlinedButton(
            onPressed: () => router.go('/logout'),
            child: const Text('Logout'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              router.go('/');
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
