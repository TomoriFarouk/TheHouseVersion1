import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/product/widget/reviewWidget.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import 'widget/productReview.dart';
import 'widget/product_appbar.dart';

class ProductDetails extends StatefulWidget {
  final List<ProductReview> review;
  const ProductDetails({required this.review});
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _itemSize = 1;
  int _colorPosition = 0;
  bool _isExpand = false;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ProductAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 304.h,
                child: PageView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/dining_table_2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  onPageChanged: (value) {
                    _index = value;
                    setState(() {});
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < 9; i++)
                        if (i == _index) ...[
                          circleBar(true)
                        ] else
                          circleBar(false),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 45.h),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.w,
                  right: 25.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AuthButton(text: 'View in Ar', press: () {}),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: TitleText(
                        text: 'Converse Chuck Taylor All Star High Top Optical White Sneakers',
                        Size: 20.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Text(
                        'Vendor name',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.17.h),
                      child: Row(
                        children: [
                          IconTheme(
                            data: IconThemeData(
                              color: Colors.amber,
                              size: 12,
                            ),
                            child: StarDisplay(value: 3),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.w),
                            child: Text(
                              '(4 ratings)',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12.sp,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 14.57.h),
                      child: Row(
                        children: [
                          Text(
                            '# 299.00',
                            style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 24.sp, color: ColorManager.goldColor),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.w, right: 8.w),
                            child: Text(
                              '# 299.00',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 12.sp,
                                  ),
                            ),
                          ),
                          Text(
                            'Save #210 (50%)',
                            style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 12.sp, color: ColorManager.goldColor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 9.h),
                      child: Text(
                        'To be delivered to you : 10th August, 2021',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: Text(
                        'Free shipping',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text(
                          'Colors',
                          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontSize: 14.sp,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9.h),
                          child: _availableColorWidget(),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: Divider(
                        color: ColorManager.dividerColor,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(height: 90.h),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text(
                          'Description',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        children: [
                          ListTile(
                            title: Text(
                              'You can stop browsing the internet right now; the Josie Upholstered Bed is the mid-century modern frame you have been looking for! With a soft velvet upholstery and a horizontal ribbed tufting pattern in the headboard..',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14.sp,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text(
                          'Weight',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        children: [
                          ListTile(
                            title: Container(
                              height: 171.h,
                              width: 366.w,
                              decoration: BoxDecoration(
                                color: ColorManager.ratingBarColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text(
                          'Review',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        children: [
                          ListTile(
                              title: Column(children: [
                            Row(children: [
                              Text(
                                '4.9',
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 32.sp, color: ColorManager.primaryColor),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 19.w),
                                child: Column(
                                  children: [
                                    StarDisplay(value: 5),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.37.h),
                                      child: Text(
                                        '130 Ratings, 43 Reviews',
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp, color: ColorManager.primaryColor),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ]),
                            Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: ReviewSec(
                                starNumber: '5',
                                ratingNumber: 217,
                                percentage: '94%',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: ReviewSec(
                                starNumber: '4',
                                ratingNumber: 107,
                                percentage: '56%',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: ReviewSec(
                                starNumber: '3',
                                ratingNumber: 50,
                                percentage: '26%',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: ReviewSec(
                                starNumber: '2',
                                ratingNumber: 25,
                                percentage: '14%',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: ReviewSec(
                                starNumber: '1',
                                ratingNumber: 0,
                                percentage: '0%',
                              ),
                            ),
                          ])),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: SectionTitle(text1: 'Item reviews', text2: 'See all'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: SizedBox(
                        height: 180.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.review.length,
                            itemBuilder: (context, index) {
                              return ProductReviews(
                                review: widget.review[index],
                              );
                            }),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: SectionTitle(
                        text1: 'Last Viewed',
                        text2: 'View all',
                      ),
                    ),
                    ProductSlider(products: Product.products.where((product) => product.trending).toList()),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(color: isActive ? ColorManager.whiteColor : ColorManager.disableColor, borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }

  Widget _availableColorWidget() {
    return Container(
        child: Row(
      children: <Widget>[
        _colorView(ColorManager.goldColor, (0)),
        _colorView(Colors.grey, (1)),
        _colorView(Colors.orangeAccent, (2)),
        _colorView(Colors.redAccent, (3)),
      ],
    ));
  }

  Widget _colorView(Color color, int position) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(right: 15),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: color,
            child: Icon(
              Icons.circle,
              color: (_colorPosition == position) ? ColorManager.whiteColor : color,
              size: 12,
            ),
          ),
        ),
        onTap: () {
          _colorPosition = position;
          setState(() {});
        },
      ),
    );
  }
}
