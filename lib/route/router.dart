import 'package:flutter/material.dart';

import '../pages/pages.dart';
import 'package:get/get.dart';

class RouteManager {
  static const String splashRoute = 'SplashPage';
  static const String bottomNavigation = 'bottomNavigation';

  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case bottomNavigation:
        return MaterialPageRoute(builder: (_) => BottomNavigationWidget());

      default:
        return MaterialPageRoute(builder: (_) => NoRouteScreen(settings.name));
    }
  }

  static Future<Object?>? pushNamedAndRemoveUntil(
      BuildContext context, String named) {
    return Get.offNamedUntil(named, (Route<dynamic> route) => false);
  }

  static pop(BuildContext context) {
    return Navigator.pop(context);
  }
}

class NoRouteScreen extends StatelessWidget {
  final String? screenName;

  const NoRouteScreen(this.screenName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('${'no_route_defined'} "$screenName"')),
    );
  }
}
