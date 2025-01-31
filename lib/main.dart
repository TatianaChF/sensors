import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sensors/map_screen.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
    routes: <RouteBase> [
      GoRoute(
          path: "/",
          builder: (BuildContext contex, GoRouterState state) {
            return const MyHomePage(title: 'Flutter Demo Home Page');
          },
          routes: <RouteBase> [
            GoRoute(
                path: "/map",
                builder: (BuildContext contex, GoRouterState state) {
                  return const MapScreen();
                }
            ),
          ]
      )
    ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: mainColor,
      //   ),
      //   useMaterial3: true,
      // ),
      routerConfig: _router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Приложение "Датчики"',
            ),
            Text('Приложение для отображения датчиков на карте, вывода информации и графиков на основе данных от них'),
            ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFF102C14)),
                ),
                onPressed: () => context.go("/map"),
                child: Text('Начать')
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
