import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyNavigationBar extends StatelessWidget  {
  const MyNavigationBar({
    super.key, 
    required this.navigationShell
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: navigationShell,
        bottomNavigationBar: BottomNavigationBar(
          items: _buildBottomNavBarItems,
          currentIndex: navigationShell.currentIndex,
          onTap: (index) => navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          ),
        ),
    );
  }

  List<BottomNavigationBarItem> get _buildBottomNavBarItems => [
    const BottomNavigationBarItem(
        icon: Icon(Icons.location_on_outlined),
        label: "Карта"
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.inbox_outlined),
        label: "Диаграммы",
    ),
  ];
}


