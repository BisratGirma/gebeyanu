import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    const Product(
        name: 'Shiro',
        category: 'Food',
        imageUrl:
            'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        price: 90.00,
        isRecommended: true,
        isPopular: true),
    const Product(
        name: 'Shiro',
        category: 'Food',
        imageUrl:
            'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        price: 90.00,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: 'Shiro',
        category: 'Food',
        imageUrl:
            'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        price: 90.00,
        isRecommended: true,
        isPopular: true),
    const Product(
        name: 'Shiro',
        category: 'Food',
        imageUrl:
            'https://whisk-res.cloudinary.com/image/upload/g_auto,g_auto,c_fill,q_60,f_auto,h_600,w_800/v1588909583/recipe/d7276280fee06fa3ae88901a1bdbbc1c.jpg',
        price: 90.00,
        isRecommended: true,
        isPopular: true),
  ];
}
