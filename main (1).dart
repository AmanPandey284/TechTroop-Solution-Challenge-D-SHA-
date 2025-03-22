import 'package:flutter/material.dart';
import 'package:myapp/app_theme.dart';
import 'package:myapp/register_screen.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'register_screen.dart';
import 'app_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'D!SHA  ',
      theme: themeProvider.themeData,
      debugShowCheckedModeBanner: false,
      home: const RegisterScreen(), // Start with the RegisterScreen
    );
  }
}