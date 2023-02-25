import 'package:flutter/material.dart';
import 'package:movies/views/welcome_screen.dart';

import '../views/splash_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static const INITIAL = Routes.splash;
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      // case LOGIN:
      //   return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
