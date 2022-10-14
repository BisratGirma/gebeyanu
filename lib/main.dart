import 'package:flutter/material.dart';
import 'package:gebeyanu/widgets/widgets.dart';

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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Gebeyanu'),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
