import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
        name: "Menen Tibeb",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Habesha_woman-b.jpg/220px-Habesha_woman-b.jpg"),
    const Category(
        name: "Traditional",
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Traditional_Eritrean_dance.jpg/140px-Traditional_Eritrean_dance.jpg"),
  ];
}
