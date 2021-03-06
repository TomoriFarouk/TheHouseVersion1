import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/address_card_list.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/checkout_appbar.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/delivery_list.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import '../widget/stepper_tab.dart';

class ShippingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CheckoutAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                      text: 'Shipping address',
                      Size: 16,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(child: AddressCardlist(addresses: Address.address.toList())),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.add), onPressed: () {}),
                      SizedBox(width: 16.w),
                      TitleText(text: 'Add address', Size: 14)
                    ],
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TitleText(
                      text: 'Delivery Method',
                      Size: 16,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    child: Deliverylist(
                      delivery: Delivery.delivery.toList(),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  AuthButton(text: 'Continue', press: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
