import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/screen/cart/widget/order_text.dart';
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
          child: Column(
            children: [
              StepperTab(selectedIdex: 1),
              SizedBox(height: 53.h),
              ShippingAddress(),
              SizedBox(
                height: 21.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Divider(
                  color: Color(0xFFCCCCCC),
                  thickness: 1,
                ),
              ),
              OrderText(text1: 'Total', text2: '#420.69'),
              SizedBox(
                height: 10.h,
              ),
              AuthButton(text: 'Continue', press: () {})
            ],
          ),
        ));
  }
}
