import 'package:flutter/material.dart';
import 'package:gebeyanu/config/app_router.dart';
import 'package:gebeyanu/config/theme.dart';
import 'package:gebeyanu/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gebeyanu',
      theme: theme(),
      home: HomeScreen(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
