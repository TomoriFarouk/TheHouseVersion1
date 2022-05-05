import 'dart:async';

import 'package:flutter/services.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/onBoardingPage/onBoardingPage.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';
import 'app_viewmodel.dart';

class MyHomePage extends StatefulWidget with AppViewModel {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);

    signInValue();

    // Timer(Duration(seconds: 0), () {
    Timer(Duration(seconds: (_isSignIn) ? 5 : 0), () {
      if (_isSignIn) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => TabWidget(),
            ));
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    //  SizeConfig().init(context);
    return WillPopScope(
        child: Scaffold(
            backgroundColor: ColorManager.appbarwithBodyColor,
            body: Container(
              child: getSignInWidget(),
            )),
        onWillPop: requestPop);
  }

  Future<bool> requestPop() {
    Future.delayed(const Duration(milliseconds: 200), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });

    return new Future.value(false);
  }

  bool _isSignIn = false;
  bool _isIntro = false;

  void signInValue() async {
    _isSignIn = await PrefData.getIsSignIn();
    _isIntro = await PrefData.getIsIntro();

    setState(() {});
    if (_isIntro) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => IntroPage(
              introModelList: Splash.splash.toList(),
            ),
          ));
    }
  }

  Widget getSignInWidget() {
    return IntroPage(introModelList: Splash.splash.toList());
    // if (_isSignIn) {
    //   return SplashPage();
    // } else {
    //   return ChoosePage();
    // }
  }
}
