import 'package:flutter/material.dart';

class RouteName {
  static final unknownRoute = MaterialPageRoute(
    builder: (_) => const Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    ),
  );
  static const String splashScreen = '/';
  static const String welcomeScreen = '/welcome_screen';
}
