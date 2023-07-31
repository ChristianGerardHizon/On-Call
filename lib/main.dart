import 'package:authentication_package/authentication_package.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:pocketbase/pocketbase.dart';

import 'core/router/router.dart';

final pb = PocketBase('');
final coreRepo = CoreRepository(pb);
final authRepo = AuthDataRepository(coreRepo);

void main() {
  usePathUrlStrategy();
  runApp(const ProviderScope(child: Application()));
}

class Application extends ConsumerWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'OnCall',
      routerConfig: router,
    );
  }
}
