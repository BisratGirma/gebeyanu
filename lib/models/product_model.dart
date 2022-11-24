import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(this.name, this.category, this.imageUrl, this.price,
      this.isRecommended, this.isPopular);

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
        'Shiro',
        'Food',
        'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        90.00,
        true,
        true),
    Product(
        'Shiro',
        'Food',
        'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        90.00,
        true,
        true),
    Product(
        'Shiro',
        'Food',
        'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        90.00,
        true,
        true),
    Product(
        'Shiro',
        'Food',
        'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        90.00,
        true,
        true),
    Product(
        'Shiro',
        'Food',
        'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        90.00,
        true,
        true),
    Product(
        'Shiro',
        'Food',
        'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        90.00,
        true,
        true)
  ];
}
