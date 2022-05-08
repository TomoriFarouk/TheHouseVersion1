import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/cart/widget/cart_card.dart';
import 'package:furniture_ui/presentation/screen/cart/widget/order_text.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/checkout_appbar.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import '../widget/stepper_tab.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen();

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CheckoutAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StepperTab(selectedIdex: 3),
            SizedBox(
              height: 48.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 2.w,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: TitleText(
                      text: 'Please confirm and submit your order',
                      Size: 16,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TitleText(
                      text: 'Shipping address',
                      Size: 16,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                      height: 120,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 14.w),
                          Expanded(
                            child: Container(
                              height: 130,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TitleText(
                                        text: 'Maurice', //address.firstname,
                                        Size: 16,
                                      ),
                                      TitleText(
                                        text: 'Umoh', //address.lastname,
                                        Size: 16,
                                      ),
                                    ],
                                  ),
                                  BodyText(
                                    text: '1 Joseph Jackson crescent street ', //address.homeAddress,
                                    size: 14,
                                  ),
                                  Row(children: [
                                    BodyText(
                                      text: 'Uyo', //address.state,
                                      size: 14,
                                    ),
                                    Text(','),
                                    BodyText(
                                      text: 'Akwa Ibom', //address.country,
                                      size: 14,
                                    ),
                                  ]),
                                  BodyText(
                                    text: '0123 456 7890', //address.phonenumber.toString(),
                                    size: 14,
                                  ),
                                  Container(
                                    height: 26.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      color: Color(0x1AD5B65B),
                                    ),
                                    child: Text(
                                      'Home address',
                                      style: Theme.of(context).textTheme.headline1!.copyWith(
                                            fontSize: 12.sp,
                                            color: ColorManager.goldColor,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              Navigator.pushNamed(context, '');
                            },
                            child: Text(
                              'Change',
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0x1AD5B65B),
                                    fontSize: 14.sp,
                                  ),
                            ),
                          ),
                        ],
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TitleText(
                      text: 'Payment Method',
                      Size: 16,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    child: paymentMethod(
                      text: 'Maurice Umoh',
                      text2: 'Visa card ending in 4909',
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    child: paymentMethod(
                      text: 'Billing address',
                      text2: 'Same as shipping address',
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TitleText(
                      text: 'Item details',
                      Size: 16,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CartCard(check: false),
                  SizedBox(height: 8.h),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TitleText(
                      text: 'Your Order',
                      Size: 16,
                    ),
                  ),
                  SizedBox(
                      child: Column(children: [
                    SizedBox(height: 30.h),
                    Container(
                      height: 116.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OrderText(text1: 'Subtotal', text2: '#420.69'),
                          OrderText(text1: 'Shipping', text2: '#420.69'),
                          OrderText(text1: 'Total', text2: '#420.69'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 34.h,
                        bottom: 22.h,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Divider(
                          color: Color(0xFFCCCCCC),
                          thickness: 1,
                        ),
                      ),
                    ),
                    Container(
                        height: 130.h,
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                          OrderText(text1: 'items Subtotal', text2: '#420.69'),
                          AuthButton(
                            text: 'Make Payment',
                            press: () {},
                          ),
                        ]))
                  ])),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget paymentMethod({String? text, String? text2}) {
    return SizedBox(
        height: 50,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TitleText(
                      text: text!,
                      Size: 16,
                    ),
                    BodyText(text: text2!, size: 14),
                  ],
                ),
              ),
            ),
            TextButton(
              //style: TextButton.styleFrom(primary: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: Text(
                'Change',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0x1AD5B65B),
                      fontSize: 14.sp,
                    ),
              ),
            ),
          ],
        ));
  }
}
