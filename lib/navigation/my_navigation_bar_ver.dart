import 'package:flutter/material.dart';

class MyNavigationBarVer extends StatelessWidget {
  const MyNavigationBarVer({
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
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            selectedIndex: currentIndex,
            destinations: const [
              NavigationRailDestination(
                selectedIcon: Icon(Icons.location_on),
                icon: Icon(Icons.location_on_outlined, color: Colors.white), 
                label: Text("Карта", style: TextStyle(color: Colors.white),)
              ),
              NavigationRailDestination(
                selectedIcon: Icon(Icons.inbox),
                icon: Icon(Icons.inbox_outlined, color: Colors.white), 
                label: Text("Диаграммы", style: TextStyle(color: Colors.white),)
              )
            ], 
          ),
          const VerticalDivider(thickness: 1, width: 1,),
          Expanded(child: body)
        ],
      ),
    );
  }
}