import 'package:admin_package/admin_package.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:authentication_package/authentication_package.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketbase/pocketbase.dart';

import 'core/router/router.dart';

final coreRepoProvider = Provider((ref) {
  String getServer() {
    if (kIsWeb) {
      return 'http://localhost:8000';
    }
    return 'https://vocal-mutt-widely.ngrok-free.app';
  }

  final pb = PocketBase(getServer());
  const config = PBCollections(
    users: '_pb_users_auth_',
    serviceOrders: 'ukk2h1jos3ikuj5',
    serviceProviders: 'j1qxxjwp8eq6pqx',
    serviceProviderServices: 'kdruhc60eq1n3v1',
    services: 'u03zwnntnk69f5i',
    publicServiceProviders: 'j6a1tfsouqssz42',
    publicServices: 'ba9faocjzh2hbl4',
    adminServiceProviders: 'j1qxxjwp8eq6pqx',
    serviceProviderUsers: 'is89td0q4na01bn',
  );
  return CoreRepository(pb, config);
});
final authRepoProvider =
    Provider((ref) => AuthRepository(ref.read(coreRepoProvider)));
final adminRepoProvider =
    Provider((ref) => AdminRepository(ref.read(coreRepoProvider)));

Future<void> main() async {
  usePathUrlStrategy();
  runApp(const ProviderScope(child: Application()));
}

class Application extends ConsumerWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'OnCall',
      routerConfig: router,
      theme: Theme.of(context).copyWith(
        useMaterial3: true,
        appBarTheme: AppBarTheme.of(context).copyWith(
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          titleTextStyle: GoogleFonts.openSans(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
        ),
        textTheme: GoogleFonts.openSansTextTheme(Typography.blackCupertino),
      ),
    );
  }
}
