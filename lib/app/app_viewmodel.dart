import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class AppViewModel {
  bool isSignIn = false;

  Future<bool> requestPop() {
    Future.delayed(const Duration(milliseconds: 200), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });

    return new Future.value(false);
  }

  Timer time(context) {
    return Timer(Duration(seconds: (isSignIn) ? 5 : 0), () {
      if (isSignIn) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => TabWidget(),
            ));
      } else {}
    });
  }
}
