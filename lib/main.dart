import 'package:balancei_app/router/routers.dart';
import 'package:balancei_app/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Balancei',
      routerConfig: AppRouter.router,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF65558F),
          primary: const Color(0xFF65558F),
          secondary: const Color(0xFFD0BCFF),
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(
            fontSize: 14,
            fontFamily: 'Roboto',
          ),
          headlineMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            color: Colors.black,
          ),
          headlineSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            color: Colors.black,
          ),
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        scaffoldBackgroundColor: Color(0xFFFCFCFC),
      ),
    );
  }
}
