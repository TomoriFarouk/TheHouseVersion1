import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/screen/Listing/widget/active_listing.dart';
import 'package:furniture_ui/presentation/screen/Listing/widget/appBar.dart';
import 'package:furniture_ui/presentation/screen/Listing/widget/heading.dart';

class ClosedScreen extends StatefulWidget {
  @override
  State<ClosedScreen> createState() => _ClosedScreenState();
}

class _ClosedScreenState extends State<ClosedScreen> {
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
            appBar: ListingAppBar(text: 'Sell used items'),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  Heading(),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Closed',
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
                                ListTile(title: Text('Active Listing')),
                                ListTile(title: Text('Draft')),
                                ListTile(title: Text('Closed')),
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
                  SizedBox(height: 16.h),
                  ActiveListing(
                    value: 3,
                  ),
                  SizedBox(height: 16.h),
                  ActiveListing(
                    value: 3,
                  ),
                ]),
              ),
            )),
      ),
    );
  }
}
