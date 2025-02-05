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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
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
                        "Диаграмма 1",
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
      )
    );
  }
}