import 'package:flutter/material.dart';
import 'package:meetup_planner/features/home_page.dart';
import 'package:meetup_planner/res/routes/routes_name.dart';

import '../../features/auth/splash_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> appRoutes() {
    return {
      RouteName.splashScreen: (_) => const SplashScreen(),
      RouteName.homeScreen: (_) => const MyHomePage(),
      // Add more routes as needed
      // ...
    };
  }
}


// class AppRoutes {
//   static List<MaterialPageRoute> appRoutes() {
//     return [
//       MaterialPageRoute(
//         settings: const RouteSettings(name: RouteName.splashScreen),
//         builder: (_) => const SplashScreen(),
//       ),
//       // MaterialPageRoute(
//       //   settings: RouteSettings(name: RouteName.welcomeScreen),
//       //   builder: (_) => WelcomeScreen(),
//       // ),
//     ];
//   }
// }
