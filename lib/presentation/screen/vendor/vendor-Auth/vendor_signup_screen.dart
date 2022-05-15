import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/widget/stepper.dart';
import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/widget/vendor-appbar.dart';
import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/widget/vendor_signup_form.dart';

class VendorSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: VendorAppbar(text: 'Signup'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProgressBar(
                color2: ColorManager.circleColor,
                color3: ColorManager.circleColor,
                color4: ColorManager.circleColor,
              ),
              SizedBox(height: 44.h),
              VendorSignupForm(),
            ],
          ),
        ));
  }
}
