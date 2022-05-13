import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

import 'listing_tab.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListingTab(text: 'Finance'),
                              SizedBox(width: 16.w),
                              ListingTab(text: 'Buying'),
                              SizedBox(width: 16.w),
                              ListingTab(text: 'Messages'),
                            ],
                          ),
                        ),
      
                    SizedBox(height: 16.h),
                    Container(
                      height: 58.h,
                      width: 366.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0x1AD5B65B),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 110.w),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/add.svg', height: 10.h, width: 20.w),
                            SizedBox(width: 8.w),
                            Text(
                              'Create new listing',
                              style: Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 14.sp,
                                    color: ColorManager.goldColor,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )],
    );
  }
}