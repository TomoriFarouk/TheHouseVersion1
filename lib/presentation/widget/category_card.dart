import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({required this.category});
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 80,
              width: getProportionateScreenWidth(80, WIDTH),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  category.imageUrl, //category.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              category.name,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Color(0xFF0D0D0D),
                    fontSize: getProportionateScreenWidth(14, WIDTH),
                  ),
            ),
          ],
        ),
        SizedBox(
          width: getProportionateScreenWidth(16, WIDTH),
        )
      ],
    );
  }
}
