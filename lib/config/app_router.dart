import 'package:flutter/material.dart';
import 'package:gebeyanu/models/models.dart';
import 'package:gebeyanu/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('this is route: ${settings.name}');

    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text('Error')),
            ));
  }
}
