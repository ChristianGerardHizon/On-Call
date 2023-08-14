import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/constants/constants.dart';

import '../../../core/providers/providers.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  static String route = '/_';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);
    final appProd = ref.read(appProvider.notifier);
    final authProd = ref.read(authProvider.notifier);
    final appState = ref.watch(appProvider);

    if (appState.initialized) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        router.go('/');
      });
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.wait([
          Future.delayed(const Duration(seconds: 3)),
          authProd.getAuth(),
        ]).then((value) {
          appProd.initialize(true);
        });
      });
    }

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.icons.iconTransparent.path, width: 250),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        )),
      ),
    );
  }
}
