import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meetup_planner/res/components/custom_scaffold.dart';
import 'package:meetup_planner/res/theme/app_theme.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.watch(themeControllerProvider);

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AppScaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: const Text('My App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Current Theme Mode:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              Text(
                describeEnum(themeController.themeMode),
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final newTheme = themeController.themeMode == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                  themeController.setThemeMode(newTheme);
                },
                child: const Text('Toggle Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
