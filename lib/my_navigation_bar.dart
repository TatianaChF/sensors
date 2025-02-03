import 'package:flutter/material.dart';
import 'package:sensors/diagram_page.dart';
import 'package:sensors/map_screen.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBar();
}

class _MyNavigationBar extends State<MyNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text("test"),
        //_currentIndex == 0 ? MapScreen() : DiagramPage(),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Color(0xFFD4E4D7),
              labelTextStyle: WidgetStateProperty.all(const TextStyle(
                color: Colors.white,
              ))),
          child: NavigationBar(
            backgroundColor: Color(0xFF102C14),
            animationDuration: const Duration(seconds: 1),
            selectedIndex: _currentIndex,
            destinations: const [
              NavigationDestination(
                  selectedIcon: Icon(Icons.location_on),
                  icon: Icon(Icons.location_on_outlined, color: Colors.white),
                  label: "Карта"),
              NavigationDestination(
                selectedIcon: Icon(Icons.inbox),
                icon: Icon(Icons.inbox_outlined, color: Colors.white),
                label: "Диаграммы",
              )
            ],
            onDestinationSelected: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
          ),
        ));
  }
}
