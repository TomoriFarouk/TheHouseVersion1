import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/ConstantData.dart';

class ExternalPaymentList extends StatefulWidget {
  final List<ExternalPayment> payment;
  const ExternalPaymentList({required this.payment});

  @override
  _ExternalPaymentListState createState() => _ExternalPaymentListState();
}

class _ExternalPaymentListState extends State<ExternalPaymentList> {
  int selected_Position = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.payment.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  selected_Position = index;
                  setState(() {});
                },
                child: SizedBox(
                    height: 100,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          (index == selected_Position) ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                          color: (index == selected_Position) ? ColorManager.goldColor : ColorManager.disableColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text(
                          widget.payment[index].name,
                          style: Theme.of(context).textTheme.headline1!.copyWith(
                                fontSize: 14.sp,
                              ),
                        ),
                      ],
                    )),
              );
            }),
      ),
    );
  }
}
