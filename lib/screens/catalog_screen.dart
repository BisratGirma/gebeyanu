import 'package:flutter/material.dart';
import 'package:gebeyanu/models/models.dart';

import '../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  static const routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CatalogScreen(category: category));
  }

  final Category category;

  const CatalogScreen({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts =
        Product.products.where((product) => product.category == category.name).toList();
    return Scaffold(
        appBar: CustomAppBar(title: category.name),
        bottomNavigationBar: const CustomNavBar(),
        body:
            //  ProductCard(product: Product.products[0]),
            GridView.builder(
              itemCount: categoryProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.15),
                itemBuilder: ((context, index) {
                  return ProductCard(
                    product: categoryProducts[index],
                    widthFactor: 2.2,
                  );
                })));
  }
}
