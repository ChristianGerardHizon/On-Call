import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:on_call/core/providers/auth/auth.dart';

class AdminProfileScreen extends StatelessWidget {
  static const String route = '/admin/profile';
  const AdminProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        children: [
          const AccountTile(),

          const Divider(indent: 18, endIndent: 18),

          // option 1
          const AdminProfileTile(title: 'Security Options'),

          // option 2
          const AdminProfileTile(title: 'Change Password'),

          // option 3
          AdminProfileTile(
            hasTrailing: false,
            icon: const Icon(MaterialCommunityIcons.logout),
            title: 'Logout',
            onTap: () => router.go('/logout'),
          ),
        ],
      ),
    );
  }
}

class AccountTile extends ConsumerWidget {
  const AccountTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const picture =
        'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c';

    final profile = ref.read(authProvider).user!;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(picture),
          ),
          const SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${profile.firstName} ${profile.lastName}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                profile.email,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(0, 0),
                ),
                onPressed: () {},
                child: const Text(
                  'Edit',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AdminProfileTile extends StatelessWidget {
  const AdminProfileTile({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
    this.hasTrailing = true,
  });

  final String title;
  final Icon? icon;
  final Function()? onTap;
  final bool hasTrailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: icon,
      title: Text(title),
      trailing: hasTrailing
          ? IconButton(
              icon: const Icon(MaterialCommunityIcons.chevron_right),
              onPressed: () {},
            )
          : null,
    );
  }
}
