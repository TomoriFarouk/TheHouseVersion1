import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ProductSlider extends StatelessWidget {
  final List<Product> products;

  const ProductSlider({required this.products});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5,
      ),
      child: SizedBox(
        height: 235,
        child: ListView.builder(
            // shrinkWrap: true,
            // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(
                product: products[index],
              );
            }),
      ),
    );
  }
}
