import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class CategorySlider extends StatelessWidget {
  final List<Category> categories;

  const CategorySlider({required this.categories});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
            // shrinkWrap: true,
            // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                category: categories[index],
              );
            }),
      ),
    );
  }
}
