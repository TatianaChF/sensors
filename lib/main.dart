import 'package:flutter/material.dart';
import 'package:sensors/routing/app_routing.dart';
import 'package:sensors/theme/custom_theme.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

void main() {
  WebWebViewController;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: customTheme(),
        routerConfig: router,
        debugShowCheckedModeBanner: false
    );
  }
}