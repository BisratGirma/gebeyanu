import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gebeyanu/models/models.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Gebeyanu'),
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enableInfiniteScroll: false,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          )),
          const SectionTitle(
            title: 'Recommended',
          ),
          // remommeded list
          // ProductCard(product: Product.products[0],)
          ProductCarousel(
            products: Product.products
                .where((product) => product.isRecommended)
                .toList(),
          ),
          const SectionTitle(
            title: 'Most Popular',
          ),
          // remommeded list
          // ProductCard(product: Product.products[0],)
          ProductCarousel(
            products:
                Product.products.where((product) => product.isPopular).toList(),
          )
        ],
      ),
    );
  }
}
