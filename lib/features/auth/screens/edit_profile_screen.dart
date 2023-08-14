import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/providers/providers.dart';

class EditProfileScreen extends ConsumerWidget {
  const EditProfileScreen({super.key});

  static String route = '/edit-profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Place Edit Profile Content Here'),
          ],
        ),
      ),
    );
  }
}
