import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/resources/ConstantData.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ActiveListing extends StatefulWidget {
  @override
  State<ActiveListing> createState() => _ActiveListingState();
}

class _ActiveListingState extends State<ActiveListing> {
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
                height: 88.h,
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
                height: 88.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BodyText(
                      text: 'Super duper',
                      size: 14.sp,
                    ),
                    TitleText(
                      text: '#420.69',
                      Size: 14.sp,
                    ),
                    BodyText(
                      text: 'Listed on Jan 2 2022, 12:12 PM',
                      size: 14.sp,
                    ),
                    BodyText(
                      text: '420 Clicks ',
                      size: 12.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 17.h),
          Row(children: [
            tab(
              width: 143.w,
              color: Color(0x1AD5B65B),
              text1: 'Mark as read',
              text2: 'assets/icons/tick.svg',
              textColor: ColorManager.goldColor,
              padding: 19,
            ),
            SizedBox(width: 16.w),
            tab(
              width: 143.w,
              color: Color(0xFFEFEFEF),
              text1: 'Share',
              text2: 'assets/icons/Share.svg',
              textColor: ColorManager.primaryColor,
              padding: 40,
            ),
            SizedBox(width: 16.w),
            tab(
              width: 47.w,
              color: Color(0xFFEFEFEF),
              text1: '',
              text2: 'assets/icons/fi_more-horizontal.svg',
              textColor: ColorManager.primaryColor,
              padding: 16,
            )
          ]),
        ],
      ),
    );
  }

  Widget tab({required double width, Color? color, String? text1, String? text2, Color? textColor, required double padding}) {
    return Container(
      height: 44.h,
      width: width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: padding.w),
        child: Row(
          children: [
            SvgPicture.asset(text2!, height: 10.h, width: 20.w),
            SizedBox(width: 8.w),
            Text(
              text1!,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 14.sp,
                    color: textColor,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
