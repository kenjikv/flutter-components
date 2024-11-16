import 'package:components_application/routes/app_routes.dart';
import 'package:components_application/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes',
      initialRoute: 'home',
      routes: AppRoutes.getAppRoute(),
      theme: AppTheme.lightTheme
    );
  }
}

