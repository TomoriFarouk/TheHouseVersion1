import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/ConstantData.dart';
import 'package:furniture_ui/presentation/screen/vendor/account/widget/account_appbar.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class VendorAccount extends StatefulWidget {
  const VendorAccount({Key? key}) : super(key: key);

  @override
  State<VendorAccount> createState() => _VendorAccountState();
}

class _VendorAccountState extends State<VendorAccount> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountAppbar(text: 'Account'),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(left: 25.w),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = 1;
                      });
                    },
                    child: tab(
                      index: 1,
                      text1: 'Expected',
                      text2: '#420.9',
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = 2;
                      });
                    },
                    child: tab(
                      index: 2,
                      text1: 'Pending',
                      text2: '#420.9',
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = 3;
                      });
                    },
                    child: tab(
                      index: 3,
                      text1: 'Available',
                      text2: '#420.9',
                    ))
              ],
            ),
          ],
        ),
      )),
    );
  }

  Widget tab({int? index, String? text1, String? text2}) {
    return Container(
        height: 60.h,
        width: 122.w,
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: selectedindex == index ? ColorManager.goldColor : Color(0xFFCCCCCC), width: 2),
        )),
        child: Column(
          children: [
            BodyText(text: text1!, size: 12.sp),
            SizedBox(
              height: 4.h,
            ),
            Text(
              text2!,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 16.sp,
                    color: selectedindex == index ? ColorManager.goldColor : ColorManager.primaryColor,
                  ),
            ),
          ],
        ));
  }
}
