import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:authentication_package/authentication_package.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketbase/pocketbase.dart';

import 'core/router/router.dart';

final pb = PocketBase('https://vocal-mutt-widely.ngrok-free.app');
const config = PBCollections(
  users: '_pb_users_auth_',
  serviceOrders: 'ukk2h1jos3ikuj5',
  serviceProviders: 'j1qxxjwp8eq6pqx',
  serviceProviderServices: 'kdruhc60eq1n3v1',
  services: 'u03zwnntnk69f5i',
  publicServiceProviders: 'j6a1tfsouqssz42',
  publicServices: 'ba9faocjzh2hbl4',
  adminServiceProviders: '2n2in6zz0u8g0wa',
);
final coreRepo = CoreRepository(pb, config);
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
      theme: Theme.of(context).copyWith(
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'OnCall',
      routerConfig: router,
    );
  }
}
