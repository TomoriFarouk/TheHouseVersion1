import 'package:equatable/equatable.dart';

class Category extends Equatable {
  // you need to download the equatable package using pub before you can use it
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [
        name,
        imageUrl
      ];
  static List<Category> categories = [
    Category(name: 'Furnitures', imageUrl: 'assets/images/diningtable.jpg'),
    Category(name: 'Applicances', imageUrl: 'assets/images/sofa.jpg'),
    Category(name: 'Home service', imageUrl: 'assets/images/gray_sofa.jpg'),
    Category(name: 'Bedrooms', imageUrl: 'assets/images/livingroom.jpg'),
    Category(name: 'Dining room', imageUrl: 'assets/images/light_wood.jpg'),
    Category(name: 'Kitchen', imageUrl: 'assets/images/light_wood_3.jpg'),
  ];
}
