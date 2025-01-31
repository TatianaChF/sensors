import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
  });

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late final MapController _mapController;
  int _currentIndex = 0;

  List<LatLng> get _mapPoints => const [
        LatLng(55.755793, 37.617134),
        LatLng(55.095960, 38.765519),
        LatLng(56.129038, 40.406502),
        LatLng(54.513645, 36.261268),
        LatLng(54.193122, 37.617177),
        LatLng(54.629540, 39.741809),
      ];

  @override
  void initState() {
    _mapController =
        MapController(); // контроллер для взаимодействия с FlutterMap
    super.initState();
  }

  @override
  void dispose() {
    _mapController.dispose(); // контроллер навсегда удаляется из дерева
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
            mapController: _mapController,
            options: const MapOptions(
              initialCenter: LatLng(55.755793, 37.617134), // точка, относительно которой карта отцентрирована при инициализации
              initialZoom: 5 // уровень начального масштабирования
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // основное отображение карты
                userAgentPackageName: 'com.example.flutter_map_example', // позже указать название приложения
              )
            ]
        ),
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Color(0xFFD4E4D7),
          ),
          child: NavigationBar(
              backgroundColor: Color(0xFF102C14),
              animationDuration: const Duration(seconds: 1),
              selectedIndex: _currentIndex,
              onDestinationSelected: (int newIndex) {
                setState(() {
                  _currentIndex = newIndex;
                });
              },
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.location_on),
                  icon: Icon(Icons.location_on_outlined),
                  label: "Карта",
                ),
                NavigationDestination(
                    selectedIcon: Icon(Icons.inbox),
                    icon: Icon(Icons.inbox_outlined),
                    label: "Диаграммы"
                )
              ]
          ),
      ),
    );
  }
}
