import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gebeyanu/models/models.dart';

import '../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen(product: product));
  }

  final Product product;
  const ProductScreen({required this.product});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Products'),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white),
                  ))
            ],
          ),
        )),
        body: ListView(
          children: [
            CarouselSlider(
                items: [
                  HeroCarouselCard(
                    product: product,
                  )
                ],
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    alignment: Alignment.bottomCenter,
                    color: Colors.black.withAlpha(50),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width - 10,
                    height: 50,
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "\$${product.price}",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text('Product Information',
                    style: Theme.of(context).textTheme.headline3),
                children: [
                  ListTile(
                    title: Text(
                      "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ExpansionTile(
                title: Text(
                  'Delivery Information',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.black87),
                ),
                children: [
                  ListTile(
                    title: Text(
                      "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
