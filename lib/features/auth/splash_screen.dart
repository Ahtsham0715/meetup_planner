import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:meetup_planner/res/components/custom_scaffold.dart';
import 'package:meetup_planner/res/extensions/size_extension.dart';

import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';
import '../../res/components/custom_text.dart';
import '../../res/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, RouteName.homeScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: Center(
        child: Icon(
          Icons.play_arrow_rounded,
          size: 200.0,
        ),
      ),
    );
  }
}
