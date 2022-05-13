import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/Listing/widget/appBar.dart';
import 'package:furniture_ui/presentation/screen/Listing/widget/listing_tab.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/checkout_appbar.dart';
import 'package:furniture_ui/presentation/screen/checkout/widget/stepper_tab.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import 'widget/active_listing.dart';
import 'widget/heading.dart';

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
            appBar: ListingAppBar(text: 'Sell used items'),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Heading(
                      value: 1,
                      isMenuOpen: isMenuOpen,
                    ),
                    SizedBox(height: 16.h),
                    ActiveListing(
                      value: 1,
                    ),
                    SizedBox(height: 16.h),
                    ActiveListing(
                      value: 1,
                    ),
                    SizedBox(height: 16.h),
                    ActiveListing(
                      value: 1,
                    ),
                    SizedBox(height: 16.h),
                    ActiveListing(
                      value: 1,
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
