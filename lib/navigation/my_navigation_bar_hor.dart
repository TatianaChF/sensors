import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyNavigationBarHor extends StatelessWidget {
  const MyNavigationBarHor({
    super.key,
    required this.navigationShell
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
        indicatorColor: Color(0xFFD4E4D7),
        labelTextStyle: WidgetStateProperty.all(
        const TextStyle(color: Colors.white,)
      )),
      child: NavigationBar(
        backgroundColor: Color(0xFF102C14),
        animationDuration: const Duration(seconds: 1),
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(
              selectedIcon: Icon(Icons.location_on),
              icon: Icon(Icons.location_on_outlined, color: Colors.white),
              label: "Карта"
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.inbox),
            icon: Icon(Icons.inbox_outlined, color: Colors.white),
            label: "Диаграммы",
          ),
        ],
        onDestinationSelected: (index) =>
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            ),
      ),
    ));
  }
}