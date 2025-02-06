import 'package:flutter/material.dart';
import 'package:sensors/widgets/diagram_card.dart';

class DiagramData {
  String? name;
  int? data;

  DiagramData({
    this.name,
    this.data
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
    DiagramData(name: "Датчик №1", data: 0),
    DiagramData(name: "Датчик №2", data: 1),
    DiagramData(name: "Датчик №3", data: 2),
  ];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: sensorData.length,
      itemBuilder: (BuildContext context, int index) {
        return DiagramCard(name: sensorData[index].name);
      }
    );
  }
}