import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class Bodys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          // SearchPanel(),
          // SizedBox(
          //   height: 10.h,
          // ),
          // CategoryTab(
          //   categories: Category.categories.toList(),
          // ),
          // SizedBox(
          //   height: 10.h,
          // ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                //height: MediaQuery.of(context).size.height,
                //the more you reduce it the taller the carousel grows
                // viewportFraction: 2.0,
                height: 161.h,
                //aspectRatio: 1.0,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale, // to reduce the space between the carousel
                // enableInfiniteScroll: false,
                // initialPage: 2,
                autoPlay: true,
              ),
              items: Splash.splash.map((x) => HomeCarousel(splash: x)).toList(),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SectionTitle(
            text1: 'Top categories',
            text2: 'View all',
          ),
          CategorySlider(categories: Category.categories.toList()),
          SizedBox(
            height: 24.h,
          ),
          SectionTitle(
            text1: 'Trending',
            text2: 'View all',
          ),
          ProductSlider(products: Product.products.where((product) => product.trending).toList()),
          SizedBox(
            height: 24.h,
          ),
          SectionTitle(
            text1: 'Last viewed',
            text2: 'View all',
          ),
          ProductSlider(products: Product.products.where((product) => product.isRecommended).toList()),
        ],
      ),
    );
  }
}
