import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/checkout_appbar.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/stepper_tab.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import 'widget/addShipping_address.dart';
import 'widget/contact_info.dart';

class AddShippingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CheckoutAppbar(),
        body: SingleChildScrollView(
          child: Column(children: [
            StepperTab(selectedIdex: 1),
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
                      text: 'Express Checkout',
                      Size: 16,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     PaymentCard(svgIcon: 'assets/icons/paypal.svg'),
                  //     PaymentCard(svgIcon: 'assets/icons/googlepay.svg')
                  //   ],
                  // ),
                  SizedBox(
                    height: 16.h,
                  ),
                  AuthText(text1: 'Have An Account?', text2: 'Sign In', routeUrl: '/enterdetail'),
                  SizedBox(
                    height: 24.h,
                  ),
                  ContactInfo(),
                  SizedBox(
                    height: 32.h,
                  ),
                  ShippingAddress(),
                ],
              ),
            )
          ]),
        ));
  }
}
