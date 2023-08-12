import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/router/router.dart';

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
