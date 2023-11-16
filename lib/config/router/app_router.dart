import 'package:aplicacion/config/router/list_router.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: routes,
  debugLogDiagnostics: true,
);

// final GoRouter appRouter = GoRouter(
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       name: HomeScreen.screenName,
//       builder: (BuildContext context, GoRouterState state) =>
//           const HomeScreen(),
//     ),
//     GoRoute(
//       path: '/buttons',
//       name: ButtonsScreen.screenName,
//       builder: (BuildContext context, GoRouterState state) =>
//           const ButtonsScreen(),
//     ),
//     GoRoute(
//       path: '/cards',
//       name: CardsScreen.screenName,
//       builder: (BuildContext context, GoRouterState state) =>
//           const CardsScreen(),
//     ),
//     GoRoute(
//       path: '/progress',
//       name: ProgressScreen.screenName,
//       builder: (BuildContext context, GoRouterState state) =>
//           const ProgressScreen(),
//     )
//   ],
// );
