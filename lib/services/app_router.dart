import 'package:flutter/material.dart';
import 'package:unity_app/widgets/tab_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case TabScreen:
        return MaterialPageRoute(builder: (_) => const TabScreen());
    }
    return null;
  }
}
