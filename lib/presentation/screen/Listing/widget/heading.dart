import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

import 'listing_tab.dart';

class Heading extends StatefulWidget {
  bool isMenuOpen;
  final int value;
  Heading({required this.value, required this.isMenuOpen});
  @override
  State<Heading> createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {
  @override
  Widget build(BuildContext context) {
    return Portal(
      child: Column(
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
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Active',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              PortalTarget(
                visible: widget.isMenuOpen,
                anchor: const Aligned(
                  follower: Alignment.topRight,
                  target: Alignment.topLeft,
                ),
                portalFollower: Material(
                  elevation: 8,
                  child: IntrinsicWidth(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(title: textbutton(text1: 'Active listing', text2: Routes.lisitngScreen)),
                        ListTile(title: textbutton(text1: 'Draft', text2: Routes.listingDraftScreen)),
                        ListTile(title: textbutton(text1: 'Closed', text2: Routes.lisitngClosedScreen)),
                      ],
                    ),
                  ),
                ),
                child: InkWell(
                    onTap: () {
                      if (widget.isMenuOpen) {
                        widget.isMenuOpen = false;
                      } else {
                        widget.isMenuOpen = true;
                      }
                      setState(() {
                        //isMenuOpen = true;
                      });
                    },
                    child: SvgPicture.asset('assets/icons/OpenArrow.svg', height: 10.h, width: 16.w)),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget textbutton({String? text1, String? text2}) {
    return TextButton(
      style: TextButton.styleFrom(primary: Colors.black),
      onPressed: () {
        Navigator.pushNamed(context, text2!);
      },
      child: Text(
        text1!,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 14.sp,
            ),
      ),
    );
  }
}
