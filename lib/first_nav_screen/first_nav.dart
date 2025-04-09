import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/routes/app_routes.dart';

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
        context.go(AppRoutes.home1);
        break;
      case 1:
        context.go(AppRoutes.profile);
        break;
      case 2:
        context.go(AppRoutes.settings);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Determine selected tab from the current location
    final String location = GoRouterState.of(context).uri.toString();
    selectedIndex = 0;
    if (location.startsWith(AppRoutes.profile)) {
      selectedIndex = 1;
    } else if (location.startsWith(AppRoutes.settings)) {
      selectedIndex = 2;
    }

    return WillPopScope(
      onWillPop: () async {
        // If we are not on the home tab, navigate back to home instead of exiting
        if (selectedIndex != 0) {
          print('this is not back');
          onItemTapped(0); // Go to the home tab
          return Future.value(false); // Prevent the app from exiting
        }
        print('this is the back');
        return Future.value(true); // Allow the app to exit if on home tab
      },
      child: Scaffold(
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
              icon: Badge(label: Text('2'), child: Icon(Icons.settings_suggest)),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
