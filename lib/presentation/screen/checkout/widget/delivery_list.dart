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
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    widget.delivery[selected].isSelected == true;
    return SingleChildScrollView(
      child: SizedBox(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.delivery.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: SizedBox(
                    height: 100,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: widget.delivery[index].isSelected == true ? ColorManager.primaryColor : ColorManager.circleColor,
                                width: 2,
                              ),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Container(
                              height: 8.57,
                              width: 8.57,
                              decoration: BoxDecoration(color: widget.delivery[index].isSelected == true ? ColorManager.primaryColor : ColorManager.circleColor, shape: BoxShape.circle),
                            ),
                          ),
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
