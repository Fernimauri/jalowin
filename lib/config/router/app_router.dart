import 'package:aplicacion/screens/buttons/buttons_screen.dart';
import 'package:aplicacion/screens/cards/cards_screen.dart';
import 'package:aplicacion/screens/home/home_screen.dart';
import 'package:aplicacion/screens/progress/progress_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.screenName,
      builder: (BuildContext context, GoRouterState state) =>
          const ProgressScreen(),
    )
  ],
);
