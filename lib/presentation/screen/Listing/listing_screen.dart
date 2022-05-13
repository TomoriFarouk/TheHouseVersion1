import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/Listing/widget/listing_tab.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/checkout_appbar.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/stepper_tab.dart';
import 'package:furniture_ui/presentation/widget/appBar.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import 'widget/active_listing.dart';

class ListingScreen extends StatefulWidget {
  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  //bool _isExpand = true;
  bool isMenuOpen = false;
  @override
  Widget build(BuildContext context) {
    return Portal(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (isMenuOpen) {
            isMenuOpen = false;
          } else {
            isMenuOpen = true;
          }
          setState(() {});
        },
        child: Scaffold(
            appBar: ListingAppBar(text: 'Listing'),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      height: 36.h,
                      width: 270.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ListingTab(text: 'Finance'),
                          ListingTab(text: 'Buying'),
                          ListingTab(text: 'Messages'),
                        ],
                      ),
                    ),
                    Container(
                      height: 58.h,
                      width: 366.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0x1AD5B65B),
                      ),
                      child: Text(
                        'Create new Listing',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 14.sp,
                              color: ColorManager.goldColor,
                            ),
                        textAlign: TextAlign.center,
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
                          visible: isMenuOpen,
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
                                  ListTile(title: Text('option 1')),
                                  ListTile(title: Text('option 2')),
                                  ListTile(title: Text('option 2')),
                                ],
                              ),
                            ),
                          ),
                          child: InkWell(
                              onTap: () {
                                if (isMenuOpen) {
                                  isMenuOpen = false;
                                } else {
                                  isMenuOpen = true;
                                }
                                setState(() {
                                  //isMenuOpen = true;
                                });
                              },
                              child: SvgPicture.asset('assets/icons/OpenArrow.svg', height: 10.h, width: 16.w)),
                        )
                      ],
                    ),
                    SizedBox(height: 25.h),
                    ActiveListing()
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
