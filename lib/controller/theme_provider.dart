import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;

setTheme(String theme) async {
  if (sharedPref != null) {
    await sharedPref!.setString('theme', theme);
  }
}

String? getTheme() {
  if (sharedPref != null) {
    return sharedPref!.getString('theme');
  }
  return null;
}

class ThemeProvider extends ChangeNotifier {
  final ThemeData _theme = getTheme() == null || getTheme() == "light"
      ? ThemeData.light(useMaterial3: true)
      : ThemeData.dark(useMaterial3: true);
  ThemeData get themeM => _theme;
  toggleTheme() {
    getTheme() == null || getTheme() == "light"
        ? setTheme('dark')
        : setTheme('light');
    notifyListeners();
  }
}
