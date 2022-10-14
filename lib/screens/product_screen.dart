import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/product';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Products'),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
