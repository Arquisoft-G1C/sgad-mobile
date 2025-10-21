import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const SGADApp());
}

class SGADApp extends StatelessWidget {
  const SGADApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGAD Mobile',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
