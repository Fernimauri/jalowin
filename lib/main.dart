import 'package:aplicacion/config/router/app_router.dart';
import 'package:aplicacion/config/theme/app_theme.dart';
import 'package:aplicacion/presentation/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      title: 'Flutter widgets fernimauri',
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      // home: const HomeScreen(),
      routerConfig: appRouter,
    );
  }
}
