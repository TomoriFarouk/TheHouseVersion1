import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/widget/stepper.dart';
import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/widget/vendor-appbar.dart';
import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/widget/vendor_signup_form.dart';

class VendorLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: VendorAppbar(text: 'Log in'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              VendorSignupForm(),
            ],
          ),
        ));
  }
}
