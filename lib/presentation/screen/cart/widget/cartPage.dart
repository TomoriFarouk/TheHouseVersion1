import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import 'cart_card.dart';
import 'order_text.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                SingleChildScrollView(
                  child: SizedBox(
                    height: 430.h,
                    child: Column(
                      children: [
                        CartCard(check: true),
                        CartCard(check: true),
                        // CartCard(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    child: Column(children: [
                  SizedBox(height: 30.h),
                  Container(
                    height: 136.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TitleText(
                          text: 'Order Summary (2 items)',
                          Size: 16.sp,
                        ),
                        OrderText(text1: 'items Subtotal', text2: '#420.69'),
                        OrderText(text1: 'Shipping', text2: '#420.69'),
                        OrderText(text1: 'Total', text2: '#420.69')
                      ],
                    ),
                  ),
                  Container(
                      height: 130.h,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                        OrderText(text1: 'items Subtotal', text2: '#420.69'),
                        AuthButton(
                          text: 'Proceed to checkout',
                          press: () {
                            Navigator.pushReplacementNamed(context, Routes.shippingScreenRoute);
                          },
                        ),
                      ]))
                ]))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
