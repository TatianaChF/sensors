import 'package:flutter/material.dart';

class DiagramPage extends StatefulWidget {
  const DiagramPage({
    super.key
  });

  @override
  State<DiagramPage> createState() => _DiagramPage();
}

class _DiagramPage extends State<DiagramPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 800,
          height: 100,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Color(0xFF102C14),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Card(
            color: Color(0xFFD4E4D7),
            child: Text("Страница диаграмм"),
          )
        )
      )
    );
  }
}