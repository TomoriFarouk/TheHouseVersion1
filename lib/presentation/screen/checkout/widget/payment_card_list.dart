import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';
import 'address_card.dart';

class PaymentCardList extends StatefulWidget {
  final List<Payment> payment;
  const PaymentCardList({
    required this.payment,
  });

  @override
  _PaymentCardListState createState() => _PaymentCardListState();
}

class _PaymentCardListState extends State<PaymentCardList> {
  int selected_Position = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.payment.length,
            itemBuilder: (context, index) {
              final payment = widget.payment[index];
              return InkWell(
                onTap: () {
                  selected_Position = index;
                  setState(() {});
                },
                child: paymentCard(
                  payment: payment,
                  index: index,
                  selectedPosition: selected_Position,
                ),
              );
            }),
      ),
    );
  }

  Widget paymentCard({int? index, int? selectedPosition, Payment? payment}) {
    return SizedBox(
        height: 120,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              (index == selectedPosition) ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              color: (index == selectedPosition) ? ColorManager.goldColor : ColorManager.disableColor,
              size: 20,
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Container(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TitleText(
                      text: payment!.name,
                      Size: 16,
                    ),
                    BodyText(text: payment.exp, size: 14),
                    BodyText(text: payment.endingDate, size: 14),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Container(
                          height: 26.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Color(0x1AD5B65B),
                          ),
                          child: Text(
                            'Default',
                            style: Theme.of(context).textTheme.headline1!.copyWith(
                                  fontSize: 12.sp,
                                  color: ColorManager.goldColor,
                                ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Container(
                          height: 20.h,
                          width: 59.w,
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(color: Color(0xFFCCCCCC), width: 2),
                          )),
                          child: TitleText(
                            text: 'Remove',
                            Size: 12.sp,
                          ),
                        ),
                      ],
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
                'Edit',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Color(0xFF8D9091),
                      fontSize: 14.sp,
                    ),
              ),
            ),
          ],
        ));
  }
}
