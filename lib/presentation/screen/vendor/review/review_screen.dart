import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/widget/stepper.dart';
import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/widget/vendor-appbar.dart';
import 'package:furniture_ui/presentation/widget/title_text.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: VendorAppbar(text: 'Review'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProgressBar(
                color2: ColorManager.goldColor,
                color3: ColorManager.goldColor,
                color4: ColorManager.goldColor,
              ),
              SizedBox(height: 115.h),
              Column(
                children: [
                  TitleText(text: 'Your application is recieved', Size: 14.sp),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 72.h,
                    width: 245.w,
                    child: BodyText(
                      text: 'We have recieved your application and will review it shortly.We will get back to you via email and let you know the next steps',
                      size: 14.sp,
                    ),
                  )
                ],
              ),
              SizedBox(height: 427.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.black),
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    child: Text(
                      'Cancel',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14.sp,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 57.w,
                  ),
                  SizedBox(
                    height: 56.h,
                    width: 208.w,
                    child: AuthButton(
                        text: 'Submit',
                        press: () {
                          Navigator.pushReplacementNamed(context, '');
                        }),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
