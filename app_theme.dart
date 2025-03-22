import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeData get themeData => _isDarkMode ? _darkTheme : _lightTheme;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  final ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: 'GoogleSans',
  );

  final ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.deepPurple,
    brightness: Brightness.dark,
    fontFamily: 'GoogleSans',
  );
}