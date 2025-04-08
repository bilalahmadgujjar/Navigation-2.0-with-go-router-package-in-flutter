import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstNav extends StatefulWidget {
  final Widget child;
  const FirstNav({super.key, required this.child});

  @override
  State<FirstNav> createState() => _FirstNavState();
}

class _FirstNavState extends State<FirstNav> {

  int selectedIndex = 0;
  void onItemTapped(int index) {
    switch (index) {
      case 0:
        context.go('/user/home');
        break;
      case 1:
        context.go('/user/profile');
        break;
      case 2:
        context.go('/user/settings');
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    // Determine selected tab from the current location
    final String location = GoRouterState.of(context).uri.toString();
    selectedIndex = 0;
    if (location.startsWith('/user/profile')) {
      selectedIndex = 1;
    } else if (location.startsWith('/user/settings')) {
      selectedIndex = 2;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: widget.child, // Use the ShellRoute's current child
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.black45,
        elevation: 1,
        selectedIndex: selectedIndex,
        onDestinationSelected: onItemTapped,
        indicatorColor: Colors.amber,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Badge(child: Icon(Icons.person)),
            icon: Badge(child: Icon(Icons.person_outline)),
            label: 'Profile',
          ),
          NavigationDestination(
            selectedIcon: Badge(child: Icon(Icons.settings)),
            icon:
                Badge(label: Text('2'), child: Icon(Icons.settings_suggest)),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

