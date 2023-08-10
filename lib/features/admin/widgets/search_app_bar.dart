import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_flutter/icons_flutter.dart';

class SearchAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final double appBarHeight = 56;
  final bool isSearching;
  final List<Widget>? actions;
  final Function()? onCancel;
  final Function(String)? onChange;
  final Function(String)? onSearch;

  const SearchAppBar({
    super.key,
    this.isSearching = false,
    this.actions,
    this.onCancel,
    this.onChange,
    this.onSearch,
  }); // Set your desired height

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      foregroundColor: Colors.white,
      elevation: isSearching ? 2 : null,
      title: isSearching
          ? Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: Center(
                child: TextField(
                  onSubmitted: onSearch,
                  // onChanged: onSearch,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for something',
                    // suffixIcon: const Icon(Icons.arrow_back),
                    prefixIcon: IconButton(
                        onPressed: onCancel,
                        icon: const Icon(MaterialIcons.arrow_back)),
                  ),
                ),
              ),
            )
          : const Text('Service Providers'),
      actions: isSearching ? null : actions,
    );
  }
}
