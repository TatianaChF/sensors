import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sensors/navigation/my_navigation_bar_hor.dart';
import 'package:sensors/navigation/my_navigation_bar_ver.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    super.key,
    required this.navigationShell
  });

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return MyNavigationBarHor(
          currentIndex: navigationShell.currentIndex, 
          body: navigationShell, 
          onDestinationSelected: _goBranch
        );
      } else {
        return MyNavigationBarVer(
          currentIndex: navigationShell.currentIndex, 
          body: navigationShell, 
          onDestinationSelected: _goBranch
        );
      }
    });
  }
}

