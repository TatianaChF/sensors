import 'package:go_router/go_router.dart';
import 'package:sensors/diagram_page.dart';
import 'package:sensors/home_page.dart';
import 'package:sensors/map_screen.dart';
import 'package:sensors/navigation/my_navigation_bar.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage()
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          MyNavigationBar(navigationShell: navigationShell),
      branches: [
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