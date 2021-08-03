import 'package:agro_doc/presentation/screens/splash_screen.dart';
import 'package:agro_doc/routes/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.pathId,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
