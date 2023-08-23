import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.teal,
          secondary: Colors.blue,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/auth',
      routes: {
        '/auth': (ctx) => const LoginScreen(),
        '/home': (ctx) => const HomeScreen(),
      },
    );
  }
}
