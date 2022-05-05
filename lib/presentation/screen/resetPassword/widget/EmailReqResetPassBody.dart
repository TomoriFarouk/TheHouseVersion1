import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';
import 'EmailReqResetPassForm.dart';

class EmailReqResetPassBody extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleText(
                text: 'Reset your password',
                Size: 20,
              ),
              SizedBox(height: 5),
              Text(
                'Enter the email associated with your account and we will send an email with intsructions to reset your password.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 32.h),
              EmailReqResetPassForm(),
              AuthText(text1: 'or', text2: 'Create new account', routeUrl: '/signup'),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
