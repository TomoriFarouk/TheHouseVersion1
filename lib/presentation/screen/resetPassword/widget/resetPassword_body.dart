import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';
import 'resetPasswordForm.dart';

class ResetPassBody extends StatelessWidget {
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
              TitleText(
                text: 'Reset your password',
                Size: 20,
              ),
              SizedBox(height: 8.h),
              Text(
                'Your new password must be different from previous used passwords.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 46.h),
              ResetPassForm(),
              AuthText(text1: 'or', text2: 'Create new account', routeUrl: '/signup'),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
