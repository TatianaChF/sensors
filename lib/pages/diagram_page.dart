import 'package:flutter/material.dart';

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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return ListView.builder(
      itemCount: sensorData.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
            children: [
              Container(
                  width: 800,
                  height: 100,
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF102C14),
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.05),
                  child: Card(
                      color: Color(0xFFD4E4D7),
                      child: Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            children: [
                              Text(
                                  "${sensorData[index].name}",
                                  style: TextStyle(
                                      color: Color(0xFF102C14),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  )
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xFF102C14),
                                size: 35,
                              )
                            ],
                          )
                      )
                  )
              )
            ]
        );
      }
    );
  }
}