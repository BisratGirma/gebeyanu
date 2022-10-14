import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  static const routeName = '/catalog';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CatalogScreen());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Catalog'),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
