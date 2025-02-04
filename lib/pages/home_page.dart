import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 600,
          height: 500,
          child: Card(
            color: Color(0xFFD4E4D7),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(width: 1, color: Color(0xFF102C14))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Приложение "Датчики"',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 500,
                  child: Text(
                    'Приложение для отображения датчиков на карте, вывода информации и графиков на основе данных от них',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () => context.go("/map"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF102C14),
                  ),
                  child: Text('Начать', style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
