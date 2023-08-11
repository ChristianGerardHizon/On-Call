import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:on_call/features/admin/providers/service_provider/sp_list_provider.dart';

import '../../../core/widgets/widgets.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class AdminSPListScreen extends ConsumerWidget {
  static const String route = '/admin/service-providers';
  const AdminSPListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);

    final state = ref.watch(spListProvider);
    final notifier = ref.read(spListProvider.notifier);

    final searchNotifier = ref.watch(spListSearchProvider.notifier);

    return Scaffold(
      appBar: SearchAppBar(
        isSearching: ref.watch(spListSearchProvider),
        onSearch: (val) {
          notifier.search(val);
          searchNotifier.update((state) => false);
        },
        onCancel: () {
          searchNotifier.update((state) => false);
        },
        actions: [
          IconButton(
            onPressed: () => {searchNotifier.update((state) => true)},
            icon: const Icon(MaterialCommunityIcons.account_search),
          ),
          const SizedBox(width: 8),
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
          error: (error, stackTrace) => Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Something went wrong'),
              TextButton(
                  onPressed: notifier.refresh, child: const Text('Try again'))
            ],
          )),
          loading: () => const Center(child: TextLoader(message: 'Loading...')),
          data: (record) => Visibility(
              visible: record.items.isNotEmpty,
              replacement: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('No Service Provider Found'),
                  TextButton.icon(
                    label: const Text('Refresh list'),
                    onPressed: notifier.refresh,
                    icon: const Icon(Icons.refresh, size: 18),
                  )
                ],
              )),
              child: GestureDetector(
                onTapDown: ref.watch(spListSearchProvider)
                    ? (det) => searchNotifier.update((state) => false)
                    : null,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const Divider(height: 0),
                  itemCount: record.items.length,
                  itemBuilder: (context, index) {
                    final item = record.items[index];

                    final isLast = index == (record.items.length - 1);
                    final isFirst = index == 0;

                    final searchString = record.searchString;

                    const picture =
                        'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c';
                    return Column(
                      children: [
                        if (isFirst && searchString != null)
                          SizedBox(
                            width: double.maxFinite,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 18, right: 18, bottom: 10),
                              child: Row(children: [
                                Text(
                                  'Searching for $searchString',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                IconButton(
                                  onPressed: notifier.refresh,
                                  icon:
                                      const Icon(Icons.clear_rounded, size: 18),
                                )
                              ]),
                            ),
                          ),
                        ListTile(
                          onTap: () => router.go(AdminSPViewScreen.route,
                              extra: {'id': item.id}),
                          leading: CircleAvatar(
                            radius: 22,
                            backgroundColor:
                                item.isActive ? Colors.green : Colors.red,
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(picture),
                              radius: 20.0,
                            ),
                          ),
                          visualDensity: VisualDensity.standard,
                          title: Text(
                            item.publicName,
                            style: TextStyle(
                              color: item.isActive ? null : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: SizedBox(
                            height: 25,
                            child: Row(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item.isPublic ? 'Public' : 'Private'),
                                  const SizedBox(width: 4),
                                  const Icon(MaterialCommunityIcons.circle,
                                      size: 5),
                                  const SizedBox(width: 4),
                                  Text(item.email),
                                ]),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                                MaterialCommunityIcons.chevron_right),
                            onPressed: () {},
                          ),
                        ),
                        if (isLast)
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              'Page ${record.page} of ${record.totalItems}',
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              )),
        ),
      ),
    );
  }
}
