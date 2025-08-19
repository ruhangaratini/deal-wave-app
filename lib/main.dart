import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app_state.dart';
import 'core/themes/app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [Provider(create: (_) => AppState())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppState>();

    return MaterialApp.router(
      title: 'Deal Wave',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: appState.theme,
      routerConfig: appState.router.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
