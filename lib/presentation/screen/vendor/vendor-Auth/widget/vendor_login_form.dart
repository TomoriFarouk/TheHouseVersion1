import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class VendorSignupForm extends StatefulWidget {
  _VendorSignupFormState createState() => _VendorSignupFormState();
}

class _VendorSignupFormState extends State<VendorSignupForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  bool valuefirst = false;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
      ),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(text: 'Email', Size: 14.sp),
                  SizedBox(
                    height: 14.h,
                  ),
                  buildEmailFormField(),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(text: 'Password', Size: 14.sp),
                  SizedBox(
                    height: 14.h,
                  ),
                  buildPasswordFormField(),
                  SizedBox(
                    height: 14.h,
                  ),
                  TitleText(
                    Size: 14.sp,
                    text: 'Forgot password?',
                  )
                ],
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 56.h,
                width: 182.w,
                child: AuthButton(
                  text: 'Sign In',
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // if all are valid then go to success screen
                      //  KeyboardUtil.hideKeyboard(context);

                      PrefData.setIsSignIn(true);
                      Navigator.pushReplacementNamed(context, Routes.confirmEmailRoute);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 121.w),
                  child: TitleText(
                    Size: 14.sp,
                    text: 'Resgister to provide services',
                  )),
            ],
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      // onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: '',
        hintText: '',
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      // onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: '',
        hintText: '',
      ),
    );
  }
}
