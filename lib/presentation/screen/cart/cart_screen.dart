import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/home/widget/home_appbar.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import 'widget/cartPage.dart';
import 'widget/savePage.dart';

class CartScreen extends StatelessWidget with PreferredSizeWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(settings: RouteSettings(name: routeName), builder: (_) => CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 145.h,
          elevation: 0,
          centerTitle: false,
          leadingWidth: 0,
          title: Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: CustomSuffixIcon(
                          svgIcon: 'assets/icons/backArrow.svg',
                        ),
                      ),
                    ),
                    TitleText(
                      text: 'Cart',
                      Size: 20.sp,
                    ),
                    InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: CustomSuffixIcon(
                        svgIcon: 'assets/icons/bookmark.svg',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 40.h,
                  ),
                  child: TabBar(
                    labelColor: ColorManager.primaryColor,
                    unselectedLabelColor: ColorManager.bodyTextColor,
                    indicatorColor: ColorManager.primaryColor,
                    tabs: [
                      Tab(
                        child: Text(
                          "Your cart",
                          // style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          //     fontSize: 16.sp,
                          //),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Saved",
                          // style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          //  fontSize: 16.sp,
                          //    ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        // bottom: TabBar(
        //   tabs: [
        //     Tab(text: "Your cart"),
        //     Tab(text: "Saved")
        //   ],
        // )

        body: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: TabBarView(
            children: [
              CartPage(),
              SavedPage(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(145.h);
}
