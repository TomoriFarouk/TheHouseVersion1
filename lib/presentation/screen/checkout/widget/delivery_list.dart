import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/ConstantData.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class Deliverylist extends StatefulWidget {
  final List<Delivery> delivery;
  const Deliverylist({required this.delivery});

  @override
  _DeliverylistState createState() => _DeliverylistState();
}

class _DeliverylistState extends State<Deliverylist> {
  int selected_Position = 0;
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SizedBox(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.delivery.length,
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
                        Expanded(
                          child: Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: RichText(
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 5,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: widget.delivery[index].name,
                                          style: Theme.of(context).textTheme.headline1!.copyWith(
                                                fontSize: 14.sp,
                                              ),
                                        ),
                                        TextSpan(
                                          text: widget.delivery[index].text,
                                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                                color: Color(0xFF545045),
                                                fontSize: 14.sp,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(children: [
                                  BodyText(text: 'fee', size: 14),
                                  Text('-'),
                                  BodyText(text: widget.delivery[index].price.toString(), size: 14),
                                ]),
                              ],
                            ),
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
