import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthText extends StatelessWidget {
  final String text1;
  final String text2;
  final String routeUrl;

  const AuthText({required this.text1, required this.text2, required this.routeUrl});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Text(
            text1,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Color(0xFF8D9091),
                  fontSize: 12.sp,
                ),
          ),
          TextButton(
            style: TextButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Navigator.pushNamed(context, routeUrl);
            },
            child: Text(
              text2,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Color(0xFFD5B65B),
                    fontSize: 12.sp,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
