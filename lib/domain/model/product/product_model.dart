import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool trending;
  final String subCategory;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.trending,
    required this.isRecommended,
    required this.subCategory,
  });
  @override
  // TODO: implement props
  List<Object> get props => [
        name,
        isRecommended,
        category,
        price,
        trending,
        imageUrl,
        subCategory
      ];

  static List<Product> products = [
    Product(
      name: 'furniture',
      category: 'Furnitures',
      subCategory: 'Dail Living',
      imageUrl: 'assets/images/lamp_1.jpg',
      trending: true,
      isRecommended: false,
      price: 1.09,
    ),
    Product(
      name: 'furniture',
      category: 'Furnitures',
      subCategory: 'Dail Living',
      imageUrl: 'assets/images/dining_table_2.jpg',
      trending: false,
      isRecommended: true,
      price: 2.09,
    ),
    Product(
      name: 'furniture',
      category: 'Furnitures',
      subCategory: 'Dail Living',
      imageUrl: 'assets/images/dining_table_1.jpg',
      trending: true,
      isRecommended: true,
      price: 3.09,
    ),
    Product(
      name: 'Furniture',
      category: 'Furnitures',
      subCategory: 'Dail Living',
      imageUrl: 'assets/images/curtains_1.jpg',
      trending: true,
      isRecommended: false,
      price: 4.09,
    ),
    Product(
      name: 'furniture',
      category: 'Furnitures',
      subCategory: 'Dail Living',
      imageUrl: 'assets/images/chair_1.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Furnitures',
      subCategory: 'Dail Living',
      imageUrl: 'assets/images/chair_1.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Applicances',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/chair_2.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Applicances',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/lamp_2.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Applicances',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/red_2.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Applicances',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/light_wood_4.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Applicances',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/drawer_2.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Home service',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/drawer_3.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Home service',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/red_3.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Home service',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/lamp_3.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Home service',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/dining_table_4.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
    Product(
      name: 'furniture',
      category: 'Home service',
      subCategory: 'Daily Living',
      imageUrl: 'assets/images/chair_4.jpg',
      trending: false,
      isRecommended: true,
      price: 5.09,
    ),
  ];
}
