import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';

class SplashContent extends StatelessWidget {
  final Splash introModel;

  SplashContent({required this.introModel});
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: HEIGHT * 0.214,
          ),
          SizedBox(
            height: HEIGHT * 0.565,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: HEIGHT * 0.229,
                  width: WIDTH * 0.495,
                  decoration: BoxDecoration(color: ColorManager.circleColor, shape: BoxShape.circle),
                ),
                Column(
                  children: [
                    Text(
                      'Office furniture',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 43, right: 42),
                      child: Container(
                        height: HEIGHT * 0.09,
                        width: WIDTH,
                        child: Text(
                          introModel.text,
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
