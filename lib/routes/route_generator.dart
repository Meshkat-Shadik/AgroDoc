import 'package:agro_doc/presentation/screens/home_screen.dart';
import 'package:agro_doc/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.pathId:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case SplashScreen.pathId:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('ERROR'), backgroundColor: Colors.red),
        body: Center(child: Text('ERROR')),
      );
    });
  }
}
