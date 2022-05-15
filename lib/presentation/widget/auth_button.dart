import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function press;
  const AuthButton({required this.text, required this.press});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press as void Function(),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        //    shadowColor: Colors.greenAccent,
        //   elevation: 3,
        //minimumSize: Size(366.w, 56.h), //////// HERE
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
