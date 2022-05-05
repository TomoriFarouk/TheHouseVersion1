import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

import 'signup_form.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 25.h,
            horizontal: 25.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create Account', style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 8.h),
              Text(
                'Please enter your email address to sign up for the best experience',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 32.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.loginRoute);
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorManager.appbarwithBodyColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  side: BorderSide(
                    width: 2.0,
                    color: ColorManager.primaryColor,
                  ),
                  minimumSize: Size(366.w, 56.h), //////// HERE
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 80.w),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/google.svg',
                        height: 20.h,
                        width: 20.w,
                        color: ColorManager.goldColor,
                      ),
                      SizedBox(width: 18.w),
                      Text(
                        'Continue with Google',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: ColorManager.primaryColor),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'OR',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              SignUpForm(),
              Center(
                child: AuthText(
                  text1: 'Have an Account?',
                  text2: 'Sign In',
                  routeUrl: Routes.confirmEmailRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
