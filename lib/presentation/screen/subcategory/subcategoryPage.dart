import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/home/widget/home_appbar.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ProductPage extends StatelessWidget {
  final SubCategory subcategory;
  const ProductPage({required this.subcategory});

  static Route getRoute({required SubCategory subcategory}) {
    return MaterialPageRoute(settings: RouteSettings(name: Routes.productPageRoute), builder: (_) => ProductPage(subcategory: subcategory));
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> subCProduct = Product.products.where((product) => product.subCategory == subcategory.name).toList();
    return Scaffold(
        appBar: HomeAppBar(
          text: "TheHouse",
          svgIcon: 'assets/icons/backArrow.svg',
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 24.h),
                  SectionTitle(
                    text1: 'Daily Living',
                    text2: '420 items',
                  ),
                  SizedBox(height: 16.h),
                  Filter(),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 11.w),
              child: SizedBox(
                height: 555.h,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // padding: const EdgeInsets.all(4.0),
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 5.w,
                    mainAxisSpacing: 10.h,
                  ),
                  itemCount: subCProduct.length,
                  itemBuilder: (ctx, i) {
                    return Center(
                        child: ProductCard(
                      product: subCProduct[i],
                    ));
                  },
                ),
              ),
            )
          ],
        ));
  }
}
