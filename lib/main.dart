import 'package:admin_package/admin_package.dart';
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
    // return 'http://127.0.0.1:8090/';
    return 'https://dev-oncall.fly.dev/';
  }

  final pb = PocketBase(getServer());
  const config = PBCollections(
    users: 'users',
    serviceOrders: 'service_orders',
    serviceProviders: 'service_providers',
    serviceProviderServices: 'service_provider_services',
    services: 'services',
    publicServiceProviders: 'public_service_providers',
    publicServices: 'pubic_services',
    adminServiceProviders: 'admin_service_providers',
    serviceProviderUsers: 'service_provider_user_details',
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
        useMaterial3: false,
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
