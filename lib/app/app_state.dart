import 'package:flutter/material.dart';

import 'app_router.dart';

class AppState {
  bool loggedIn = false;
  ThemeMode theme = ThemeMode.light;
  AppRouter router = AppRouter();
}
