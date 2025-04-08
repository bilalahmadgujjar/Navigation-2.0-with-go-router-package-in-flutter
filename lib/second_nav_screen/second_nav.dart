
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondNav extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const SecondNav({super.key, required this.navigationShell});

  void _onItemTapped(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: navigationShell, // Shows the current selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_time_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Settings'),
        ],
      ),
    );
  }

}
