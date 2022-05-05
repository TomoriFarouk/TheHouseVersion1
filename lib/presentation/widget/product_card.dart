import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({required this.product});
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    height: 155,
                    width: getProportionateScreenWidth(174, WIDTH),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        product.imageUrl, //category.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: getProportionateScreenWidth(143, WIDTH),
                    child: Container(
                        height: 25,
                        width: getProportionateScreenWidth(25, WIDTH),
                        decoration: BoxDecoration(
                          color: ColorManager.appbarwithBodyColor,
                          shape: BoxShape.circle,
                        ),
                        child: CustomSuffixIcon(
                          svgIcon: 'assets/icons/favorite.svg',
                        )),
                  ),
                ],
              ),
              Text(
                product.name,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0xFF0D0D0D),
                      fontSize: getProportionateScreenWidth(14, WIDTH),
                    ),
              ),
              IconTheme(
                data: IconThemeData(
                  color: Colors.amber,
                  size: 10,
                ),
                child: StarDisplay(value: 3),
              ),
              Text(
                '\$${product.price}',
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
      ),
    );
  }
}
