import 'package:flutter/material.dart';
import 'package:sensors/widgets/expandable_card.dart';

class DiagramData {
  String? name;
  int? data;
  bool isOpen;

  DiagramData({
    this.name,
    this.data,
    required this.isOpen
  });
}

class DiagramPage extends StatefulWidget {
  const DiagramPage({
    super.key
  });

  @override
  State<DiagramPage> createState() => _DiagramPage();
}

class _DiagramPage extends State<DiagramPage> {

  List<DiagramData> sensorData = [
    DiagramData(name: "Датчик №1", data: 0, isOpen: false),
    DiagramData(name: "Датчик №2", data: 1, isOpen: false),
    DiagramData(name: "Датчик №3", data: 2, isOpen: false),
  ];

  @override
  Widget build(BuildContext context) {

    return sensorData.length > 0
        ? ListView.builder(
          itemCount: sensorData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpandableCard(
              name: sensorData[index].name, 
              isOpen: sensorData[index].isOpen
            );
          }
    )
        : Scaffold(
          body: Center(
            child: Text(
              "Нет диаграмм",
              style: Theme.of(context).textTheme.headlineMedium,
              ),
          )
        );
  }
}