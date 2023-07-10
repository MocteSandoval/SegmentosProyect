

import 'package:go_router/go_router.dart';
import 'package:prueba_botones/screens/home_screen.dart';




final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (context, state) {
        return const HomeScreen();
      },
      ),

  ]
);