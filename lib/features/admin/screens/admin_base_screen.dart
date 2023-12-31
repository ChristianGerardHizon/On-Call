import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            tooltip: 'Dashboard',
            icon: Icon(FontAwesome.home, size: 30),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.support, size: 30),
            label: '',
            tooltip: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MaterialCommunityIcons.briefcase_outline,
              size: 35,
            ),
            tooltip: 'Services',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(top: 3),
                child: Icon(MaterialCommunityIcons.hard_hat, size: 40)),
            tooltip: 'Service Providers',
            label: '',
          ),
          BottomNavigationBarItem(
            tooltip: 'Profile',
            icon: Icon(MaterialCommunityIcons.account, size: 30),
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

    if (location.startsWith(AdminSupportListScreen.route)) {
      return 1;
    }
    if (location.startsWith(AdminServiceListScreen.route)) {
      return 2;
    }
    if (location.startsWith(AdminSPListScreen.route)) {
      return 3;
    }
    if (location.startsWith(AdminProfileScreen.route)) {
      return 4;
    }
    if (location.startsWith(AdminDashboardScreen.route)) {
      return 0;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(AdminDashboardScreen.route);
        break;
      case 1:
        GoRouter.of(context).go(AdminSupportListScreen.route);
        break;
      case 2:
        GoRouter.of(context).go(AdminServiceListScreen.route);
        break;
      case 3:
        GoRouter.of(context).go(AdminSPListScreen.route);
        break;
      case 4:
        GoRouter.of(context).go(AdminProfileScreen.route);
        break;
    }
  }
}
