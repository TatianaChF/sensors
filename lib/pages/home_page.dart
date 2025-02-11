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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(
                  width: 1, 
                  color: Color(0xFF102C14)
                )
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Приложение "Датчики"',
                    style: Theme.of(context).textTheme.headlineMedium
                  ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 500,
                  child: Text(
                    'Приложение для отображения датчиков на карте, вывода информации и графиков на основе данных от них',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () => context.go("/map"),
                  child: Text(
                    'Начать', 
                    style: Theme.of(context).textTheme.bodySmall
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
