import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/cart/widget/order_text.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/address_card_list.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/checkout_appbar.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/delivery_list.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/payment_card_list.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import '../widget/stepper_tab.dart';
import 'widget/external_payment_list.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen();
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
                  SizedBox(
                      height: 120,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 14.w),
                          Expanded(
                            child: Container(
                              height: 100,
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
                                  )
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
                              'Edit',
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Color(0xFF8D9091),
                                    fontSize: 14.sp,
                                  ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    child: PaymentCardList(
                      payment: Payment.payment.toList(),
                    ),
                  ),
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
                  Container(
                    child: ExternalPaymentList(
                      payment: ExternalPayment.payment.toList(),
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      paymentCard(
                        svgIcon: 'assets/icons/Apple.svg',
                        text: 'Apple Pay',
                        color: Color(0xFF8D9091),
                      ),
                      paymentCard(
                        svgIcon: 'assets/icons/google.svg',
                        text: 'Google Pay',
                        color: Color(0x1AD5B65B),
                      )
                    ],
                  ),
                  SizedBox(height: 61.h),
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
            )
          ],
        ),
      ),
    );
  }

  Widget paymentCard({String? svgIcon, String? text, Color? color}) {
    return Container(
      width: 175.w,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 42.w),
        child: Row(
          children: [
            SvgPicture.asset(
              svgIcon!,
              height: 24.w,
              color: text == 'Apple Pay' ? ColorManager.primaryColor : ColorManager.goldColor,
            ),
            SizedBox(
              width: 12.w,
            ),
            BodyText(text: text!, size: 14.sp)
          ],
        ),
      ),
    );
  }
}
