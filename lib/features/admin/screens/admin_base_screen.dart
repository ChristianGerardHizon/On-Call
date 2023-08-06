import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:on_call/features/admin/screens/admin_dashboard_screen.dart';
import 'package:on_call/features/admin/screens/screens.dart';

/// Builds the "shell" for the app by building a Scaffold with a
/// BottomNavigationBar, where [child] is placed in the body of the Scaffold.
class AdminBaseScreen extends StatelessWidget {
  /// Constructs an [AdminBaseScreen].
  const AdminBaseScreen({
    required this.child,
    super.key,
  });

  /// The widget to display in the body of the Scaffold.
  /// In this sample, it is a Navigator.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            tooltip: 'Dashboard',
            icon: Icon(FontAwesome.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.support),
            label: '',
            tooltip: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(MaterialCommunityIcons.hard_hat, size: 40),
            tooltip: 'Service Providers',
            label: '',
          ),
          BottomNavigationBarItem(
            tooltip: 'Profile',
            icon: Icon(MaterialCommunityIcons.account),
            label: '',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    if (location.startsWith(AdminSupportScreen.route)) {
      return 1;
    }
    if (location.startsWith(AdminSPListScreen.route)) {
      return 2;
    }
    if (location.startsWith(AdminProfileScreen.route)) {
      return 3;
    }
    if (location.startsWith(AdminDashboardScreen.route)) {
      return 0;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(
          AdminDashboardScreen.route,
        );
        break;
      case 1:
        GoRouter.of(context).go(AdminSupportScreen.route);
        break;
      case 2:
        GoRouter.of(context).go(AdminSPListScreen.route);
        break;
      case 3:
        GoRouter.of(context).go(AdminProfileScreen.route);
        break;
    }
  }
}
