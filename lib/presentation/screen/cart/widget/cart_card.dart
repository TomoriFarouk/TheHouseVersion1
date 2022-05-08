import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/ConstantData.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class CartCard extends StatelessWidget {
  final bool check;
  CartCard({required this.check});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215.h,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 83.h,
                width: 92.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1538688525198-9b88f6f53126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80', //category.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              SizedBox(
                height: 82.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TitleText(
                      text: 'Product name',
                      Size: 16.sp,
                    ),
                    TitleText(
                      text: 'Description',
                      Size: 12.sp,
                    ),
                    TitleText(
                      text: '#48',
                      Size: 16.sp,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 93.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Color(0xFFCCCCCC),
                        width: 2,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        iconSize: 15.sp,
                        color: ColorManager.bodyTextColor,
                        focusColor: ColorManager.goldColor,
                        onPressed: () {},
                      ),
                      Text('1'),
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        iconSize: 15.sp,
                        color: ColorManager.bodyTextColor,
                        focusColor: ColorManager.goldColor,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 119.w),
            check
                ? Container(
                    height: 20.h,
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Color(0xFFCCCCCC), width: 2),
                    )),
                    child: TitleText(
                      text: 'Remove',
                      Size: 12.sp,
                    ),
                  )
                : Container(),
            SizedBox(width: 24.w),
            check
                ? Container(
                    height: 20.h,
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Color(0xFFCCCCCC), width: 2),
                    )),
                    child: TitleText(
                      text: 'Save for later',
                      Size: 12.sp,
                    ),
                  )
                : Container(),
          ]),
          SizedBox(height: 8.h),
          check
              ? Container(
                  height: 54.h,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0x1AD5B65B)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TitleText(
                            text: 'Estimated Delivery',
                            Size: 12.sp,
                          ),
                          Text(':'),
                          TitleText(
                            text: '24 April',
                            Size: 12.sp,
                          ),
                        ],
                      ),
                      TitleText(
                        text: 'Shipping Tomorrow',
                        Size: 12.sp,
                      ),
                    ],
                  ))
              : Container(),
          SizedBox(height: 16.h),
          check
              ? SizedBox(
                  // width: getProportionateScreenWidth(145, WIDTH),
                  child: Divider(
                    color: Color(0xFFCCCCCC),
                    thickness: 2,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
