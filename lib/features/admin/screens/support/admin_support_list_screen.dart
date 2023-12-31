import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:on_call/core/widgets/widgets.dart';
import 'package:on_call/features/admin/providers/providers.dart';
import 'package:on_call/features/admin/screens/screens.dart';
import 'package:on_call/features/admin/widgets/widgets.dart';

const _createScreen = AdminServiceCreateScreen.route;
const _viewScreen = AdminServiceViewScreen.route;

class AdminSupportListScreen extends ConsumerWidget {
  static const String route = '/admin/support-list';
  const AdminSupportListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter.of(context);
    final prod = supportListScreenProd;
    final state = ref.watch(prod);

    final notifier = ref.read(prod.notifier);
    final searchNotifier = ref.watch(supportListScreenProvider.notifier);

    return Scaffold(
      appBar: SearchAppBar(
        title: 'Support Tickets',
        isSearching: ref.watch(serviceListScreenProvider),
        onSearch: (val) {
          notifier.search(val);
          searchNotifier.update((state) => false);
        },
        onCancel: () {
          searchNotifier.update((state) => false);
        },
        actions: [
          IconButton(
            tooltip: 'Search a Ticket',
            onPressed: () => {searchNotifier.update((state) => true)},
            icon: const Icon(MaterialCommunityIcons.magnify),
          ),
          const SizedBox(width: 8),
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
                  const Text('No Tickets Found'),
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
                          onTap: () =>
                              router.go(_viewScreen, extra: {'id': item.id}),
                          visualDensity: VisualDensity.standard,
                          title: Text(
                            item.name,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: SizedBox(
                            height: 25,
                            child: Text(
                              item.isPublic ? 'Public' : 'Private',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                                MaterialCommunityIcons.chevron_right),
                            onPressed: () {},
                          ),
                        ),
                        if (isLast)
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 10),
                            child: Text(
                              'Page ${record.page} of ${record.totalPages}',
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
