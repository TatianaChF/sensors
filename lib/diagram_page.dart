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
        child: Text("Страница диаграмм")
      )
    );
  }
}