import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class HomeCarousel extends StatelessWidget {
  final Splash splash;

  const HomeCarousel({required this.splash});
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      child: Stack(children: [
        Container(
          // height: 161.h,
          width: 375.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              splash.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 99.h,
          left: 111.w,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: ColorManager.goldColor,
              elevation: 0,
              //    shadowColor: Colors.greenAccent,
              //   elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              minimumSize: Size(112.w, 32), //////// HERE
            ),
            child: Text(
              'Shop now',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ]),
    );
  }
}
