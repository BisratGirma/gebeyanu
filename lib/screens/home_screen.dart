import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Gebeyanu'),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
