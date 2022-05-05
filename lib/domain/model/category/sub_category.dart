import 'package:equatable/equatable.dart';
import 'package:furniture_ui/domain/model/model.dart';

class SubCategory extends Equatable {
  // you need to download the equatable package using pub before you can use it
  final String name;
  final String categories;

  const SubCategory({required this.name, required this.categories});

  @override
  List<Object?> get props => [
        name,
        categories
      ];
  static List<SubCategory> subcategory = [
    SubCategory(name: 'Dail Living', categories: 'Furnitures'),
    SubCategory(name: 'Daily Living', categories: 'Furnitures'),
    SubCategory(name: 'Daily Living', categories: 'Furnitures'),
    SubCategory(name: 'Daily Living', categories: 'Furnitures'),
    SubCategory(name: 'Daily Living', categories: 'Applicances'),
    SubCategory(name: 'Daily Living', categories: 'Applicances'),
    SubCategory(name: 'Daily Living', categories: 'Applicances'),
    SubCategory(name: 'Daily Living', categories: 'Applicances'),
    SubCategory(name: 'Daily Living', categories: 'Home service'),
    SubCategory(name: 'Daily Living', categories: 'Home service'),
    SubCategory(name: 'Daily Living', categories: 'Home service'),
    SubCategory(name: 'Daily Living', categories: 'Home service'),
    SubCategory(name: 'Daily Living', categories: 'Bedrooms'),
    SubCategory(name: 'Daily Living', categories: 'Bedrooms'),
    SubCategory(name: 'Daily Living', categories: 'Bedrooms'),
    SubCategory(name: 'Daily Living', categories: 'Bedrooms'),
    SubCategory(name: 'Daily Living', categories: 'Dining room'),
    SubCategory(name: 'Daily Living', categories: 'Dining room'),
    SubCategory(name: 'Daily Living', categories: 'Dining room'),
    SubCategory(name: 'Daily Living', categories: 'Dining room'),
    SubCategory(name: 'Daily Living', categories: 'Kitchen'),
    SubCategory(name: 'Daily Living', categories: 'Kitchen'),
    SubCategory(name: 'Daily Living', categories: 'Kitchen'),
    SubCategory(name: 'Daily Living', categories: 'Kitchen'),
  ];
}
