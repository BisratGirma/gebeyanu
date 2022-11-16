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
            "https://i.etsystatic.com/37098475/r/il/3dd935/4126270206/il_794xN.4126270206_2wy0.jpg"),
  const Category(name: "Opal cluster necklace", imageUrl: "https://i.etsystatic.com/30058821/r/il/138972/3176971363/il_794xN.3176971363_i39s.jpg"),
  const Category(name: "Traditional", imageUrl: "https://allaboutethio.com/images/modern-cultural-traditional-oromo-clothes-1.jpg"),
  
  
  ];
}
