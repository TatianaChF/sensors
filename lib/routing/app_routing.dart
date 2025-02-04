import 'package:go_router/go_router.dart';
import 'package:sensors/diagram_page.dart';
import 'package:sensors/main.dart';
import 'package:sensors/map_screen.dart';
import 'package:sensors/my_navigation_bar.dart';

final router = GoRouter(
  initialLocation: '/map',
  routes: [
    // BottomNavigationBar
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          MyNavigationBar(navigationShell: navigationShell),
      branches: [
        // StatefulShellBranch(
        //     routes: [
        //       GoRoute(
        //         path: '/',
        //         builder: (context, state) => const MyApp(),
        //       )
        //     ]
        // ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/map',
              builder: (context, state) => const MapScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/diagram',
              builder: (context, state) => const DiagramPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);