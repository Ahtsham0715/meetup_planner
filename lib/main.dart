import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meetup_planner/features/home_page.dart';
import 'package:meetup_planner/res/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  // final container = ProviderContainer();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.watch(themeControllerProvider);
    return MaterialApp(
      title: 'Meetup Planner',
      theme: themeController.themeData,
      // darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}
