import 'package:flutter/material.dart';

class MyNavigationBarHor extends StatelessWidget {
  const MyNavigationBarHor({
    super.key,
    required this.currentIndex,
    required this.body,
    required this.onDestinationSelected
  });

  final int currentIndex;
  final Widget body;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBarTheme(
        data: Theme.of(context).navigationBarTheme,
      child: NavigationBar(
        animationDuration: const Duration(seconds: 1),
        selectedIndex: currentIndex,
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
        onDestinationSelected: onDestinationSelected,
      ),
    ));
  }
}