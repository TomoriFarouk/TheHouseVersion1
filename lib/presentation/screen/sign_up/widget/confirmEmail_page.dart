import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/log_in/widget/auth_appbar.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ConfirmEmail extends StatelessWidget {
  const ConfirmEmail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AuthAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 25.h,
            horizontal: 25.w,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text('Check your email', style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 66.h),
              SvgPicture.asset(
                'assets/icons/sms.svg',
                height: 93.h,
                width: 80.w,
                color: ColorManager.goldColor,
              ),
              SizedBox(height: 99.h),
              Text(
                'We sent an email to Maurice@gmail.com to verify your account',
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 68.h),
              AuthButton(
                text: 'Open email',
                press: () {
                  Navigator.pushReplacementNamed(context, Routes.tabRoute);
                },
              ),
              SizedBox(height: 68.h),
              // AuthText(
              //   text1: 'Didnt recieve the emai? Check your spam or resend code',
              //   text2: 'resend code',
              //   routeUrl: '/rpass',
              // ),
            ],
          ),
        ));
  }
}
