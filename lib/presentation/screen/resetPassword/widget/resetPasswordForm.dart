import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class ResetPassForm extends StatefulWidget {
  _ResetPassFormState createState() => _ResetPassFormState();
}

class _ResetPassFormState extends State<ResetPassForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];

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
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildPasswordFormField(),
            SizedBox(
              height: 8.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Must be atleast 8 characters',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            buildConfirmPasswordFormField(),
            SizedBox(height: 32.h),
            AuthButton(
              text: 'Login',
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // if all are valid then go to success screen
                  //  KeyboardUtil.hideKeyboard(context);

                  PrefData.setIsSignIn(true);
                  Navigator.pushReplacementNamed(context, Routes.tabRoute);
                }
              },
            ),
          ],
        ));
  }

  TextFormField buildConfirmPasswordFormField() {
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
          labelText: 'Confirm new password',
          hintText: 'Type in your password',
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/password.svg',
          )),
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
          labelText: 'password',
          hintText: 'Type in your password',
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/password.svg',
          )),
    );
  }
}
