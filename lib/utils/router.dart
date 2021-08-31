import 'package:flutter/material.dart';
import 'package:hardikpatel/screens/home/home_screen.dart';
import 'package:hardikpatel/screens/home_screen_old.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreenOld.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreenOld();
          },
        );
      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
        break;
    }
  }
}