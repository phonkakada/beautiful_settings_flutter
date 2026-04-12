import 'package:beautiful_settings_flutter/config/app_config.dart';
import 'package:beautiful_settings_flutter/routes/app_router.dart';
import 'package:beautiful_settings_flutter/screens/home_screen.dart';
import 'package:beautiful_settings_flutter/screens/settings_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter routers = GoRouter(
  initialLocation: AppRouter.home,
  routes: [
    GoRoute(path: AppRouter.home, builder: (context, state) => HomeScreen()),
    GoRoute(
      path: AppRouter.settings,
      builder: (context, state) => SettingsScreen(),
    ),
  ],
);
