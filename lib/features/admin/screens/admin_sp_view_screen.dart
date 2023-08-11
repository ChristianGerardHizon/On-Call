import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/features/admin/providers/service_provider/sp_view_provider.dart';
import 'package:on_call/features/admin/screens/admin_sp_list_screen.dart';

import '../../../core/widgets/widgets.dart';

class AdminSPViewScreen extends ConsumerWidget {
  static const String route = '/admin/service-provider';
  const AdminSPViewScreen({super.key, required this.id});

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = spViewProvider(id);
    final state = ref.watch(provider);
    final notifier = ref.watch(provider.notifier);
    final router = GoRouter.of(context);

    final appBar = AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back arrow press here
            // You can navigate back or perform any other action
            router.go(AdminSPListScreen.route);
          },
        ),
        title: const Text('Service Provider'),
        actions: [
          TextButton(
            onPressed: () {
              notifier.getServiceProvider(id!);
            },
            child: const Text('Edit'),
          ),
        ]);
    if (id == null) {
      return Scaffold(
        appBar: appBar,
        body: const Center(
          child: Text('Id has not been set'),
        ),
      );
    }
    return Scaffold(
      appBar: appBar,
      body: state.when(
        error: (error, stackTrace) => Center(
            child: Column(
          children: [
            const Text('Something went wrong'),
            TextButton(
              onPressed: () =>
                  ref.watch(provider.notifier).getServiceProvider(id!),
              child: const Text('Try Again..'),
            )
          ],
        )),
        loading: () => const Center(child: TextLoader(message: 'Loading...')),
        data: (sp) {
          // update service provider
          if (sp == null) {
            // WidgetsBinding.instance.addPostFrameCallback((_) {
            //   notifier.getServiceProvider(id!);
            // });
            return Center(
              child: Column(
                children: [
                  const Text('Something went wrong'),
                  TextButton(
                    onPressed: () => notifier.getServiceProvider(id!),
                    child: const Text('Try Again..'),
                  )
                ],
              ),
            );
          }

          const picture =
              'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c';

          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(picture),
                      ),
                      const SizedBox(width: 40),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sp.publicName,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Text(
                            sp.email,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
