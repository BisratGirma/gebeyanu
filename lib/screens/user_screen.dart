import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class UserScreen extends StatelessWidget {
  static const routeName = '/user';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => UserScreen());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Gebeyanu'),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
