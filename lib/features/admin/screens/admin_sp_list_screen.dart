import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:on_call/features/admin/providers/service_provider/sp_list_provider.dart';

import '../../../core/widgets/widgets.dart';
import 'screens.dart';

class AdminSPListScreen extends ConsumerWidget {
  static const String route = '/admin/service-providers';
  const AdminSPListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);

    final state = ref.watch(spListProvider);
    final notifier = ref.read(spListProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Providers'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(MaterialCommunityIcons.account_search),
          ),
          const SizedBox(width: 20),
          IconButton(
            onPressed: () => router.go(AdminSPCreateScreen.route),
            icon: const Icon(MaterialCommunityIcons.plus_circle),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => notifier.refresh(),
        child: state.when(
          error: (error, stackTrace) => Text('error $error'),
          loading: () => const Center(child: TextLoader(message: 'Loading...')),
          data: (data) => ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: data.totalItems,
            itemBuilder: (context, index) {
              final item = data.items[index];
              const picture =
                  'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c';
              return ListTile(
                onTap: () =>
                    router.go(AdminSPViewScreen.route, extra: {'id': item.id}),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(picture),
                  radius: 20.0,
                ),
                visualDensity: VisualDensity.standard,
                title: Text(
                  item.publicName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: SizedBox(
                  height: 25,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(item.isPublic ? 'Public' : 'Private')]),
                ),
                trailing: IconButton(
                  icon: const Icon(MaterialCommunityIcons.chevron_right),
                  onPressed: () {},
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
