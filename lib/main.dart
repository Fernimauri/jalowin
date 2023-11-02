import 'package:aplicacion/config/router/app_router.dart';
import 'package:aplicacion/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      // home: const HomeScreen(),
      routerConfig: appRouter,
    );
  }
}
