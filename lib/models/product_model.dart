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
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Taita_and_shiro.jpg/250px-Taita_and_shiro.jpg',
        price: 90.00,
        isRecommended: true,
        isPopular: true),
    const Product(
        name: 'Shiro',
        category: 'Food',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Taita_and_shiro.jpg/250px-Taita_and_shiro.jpg',
        price: 90.00,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: 'Shiro',
        category: 'Food',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Taita_and_shiro.jpg/250px-Taita_and_shiro.jpg',
        price: 90.00,
        isRecommended: true,
        isPopular: true),
    const Product(
        name: 'Shiro',
        category: 'Food',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Taita_and_shiro.jpg/250px-Taita_and_shiro.jpg',
        price: 90.00,
        isRecommended: true,
        isPopular: true),
    const Product(
        name: 'Ethiopian Gabi',
        category: 'Traditional',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/9/93/Ethiopian_woman_in_Gabi.jpg',
        price: 90.00,
        isRecommended: false,
        isPopular: true),
  ];
}
