import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:on_call/core/widgets/widgets.dart';
import 'package:on_call/features/admin/providers/service/service_view_provider.dart';

import 'screens.dart';

const _returnScreen = AdminServiceListScreen.route;
const _createScreen = AdminServiceCreateScreen.route;

class AdminServiceViewScreen extends ConsumerWidget {
  static const String route = '/admin/service';
  const AdminServiceViewScreen({super.key, this.id});
  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);
    final provider = serviceViewScreenProd(id);
    final state = ref.watch(provider);
    final notifier = ref.watch(provider.notifier);

    final appBar = AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle the back arrow press here
            // You can navigate back or perform any other action
            router.go(_returnScreen);
          },
        ),
        title: const Text('Service'),
        actions: [
          TextButton(
            onPressed: () => router.go(_createScreen, extra: {'id': id}),
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
              onPressed: () => ref.watch(provider.notifier).load(id!),
              child: const Text('Try Again..'),
            )
          ],
        )),
        loading: () => const Center(child: TextLoader(message: 'Loading...')),
        data: (service) {
          return RefreshIndicator(
            onRefresh: () => notifier.load(id!),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              children: [
                const SizedBox(height: 20),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LetterAvatar(
                      text: service.name,
                      radius: 60,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                // name
                ListTile(
                  subtitle: const Text('Name'),
                  title: Text(service.name),
                ),

                // description
                ListTile(
                  subtitle: const Text('Description'),
                  title: Text(_checkText(service.description)),
                ),

                ListTile(
                  subtitle: const Text('Visibility'),
                  title: Text(service.isPublic ? 'Public' : 'Private'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _checkText(String text) {
    if (text.isEmpty) {
      return 'No Description';
    }
    return text;
  }
}
