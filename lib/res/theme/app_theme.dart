import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeControllerProvider = ChangeNotifierProvider<ThemeController>((ref) {
  return ThemeController();
});

class ThemeController extends ChangeNotifier {
  final GetStorage box = GetStorage();
  ThemeMode themeMode = ThemeMode.light;

  ThemeController() {
    getSavedThemeMode();
  }

  ThemeData get themeData =>
      themeMode == ThemeMode.light ? lightTheme : darkTheme;

  // Light Theme
  static ThemeData get lightTheme => ThemeData.light().copyWith(
        primaryColor: Colors.teal,
        // scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // background: Colors.teal,
          secondary: Colors.amber,
          primary: Colors.teal,
        ),
        // Add more customizations as needed
      );

// Dark Theme
  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: const Color.fromARGB(255, 27, 41, 49),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black.withBlue(50).withGreen(50),
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: Colors.teal, secondary: Colors.indigo),
        // Add more customizations as needed
      );

  Future<void> setThemeMode(ThemeMode theme) async {
    if (themeMode != theme) {
      themeMode = theme;
      await box.write("theme", themeMode.toString().split('.')[1]);
      notifyListeners();
    }
  }

  Future<void> getSavedThemeMode() async {
    var savedTheme = box.read("theme") ?? "system";
    themeMode =
        ThemeMode.values.firstWhere((e) => describeEnum(e) == savedTheme);
    notifyListeners();
  }
}
