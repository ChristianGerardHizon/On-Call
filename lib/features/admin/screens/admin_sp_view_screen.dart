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
            onPressed: () => notifier.getServiceProvider(id!),
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

          const defaultTileStyle = TextStyle(
            fontWeight: FontWeight.bold,
          );
          return RefreshIndicator(
            onRefresh: () => notifier.getServiceProvider(id!),
            child: ListView(
              padding: const EdgeInsets.only(top: 8),
              children: [
                ///
                /// Header
                ///
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      LetterAvatar(
                        radius: 40,
                        text: sp.publicName,
                        textStyle: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sp.publicName,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            sp.email,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                ///
                /// Additional Information
                ///
                ListTile(
                  subtitle: const Text('First Name'),
                  title: Text(
                    sp.firstName,
                    style: defaultTileStyle,
                  ),
                ),

                ListTile(
                  subtitle: const Text('Last Name'),
                  title: Text(
                    sp.lastName,
                    style: defaultTileStyle,
                  ),
                ),

                ListTile(
                  subtitle: const Text('Email'),
                  title: Text(
                    sp.email,
                    style: defaultTileStyle,
                  ),
                ),

                ListTile(
                  subtitle: const Text('Status'),
                  title: Text(
                    sp.isActive ? 'Active' : 'Pending',
                    style: defaultTileStyle,
                  ),
                ),

                ListTile(
                  subtitle: const Text('Visibility'),
                  title: Text(
                    sp.isPublic ? 'Public' : 'Private',
                    style: defaultTileStyle,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
