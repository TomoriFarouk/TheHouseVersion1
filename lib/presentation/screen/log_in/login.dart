import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/screen/log_in/widget/auth_appbar.dart';
import 'package:furniture_ui/presentation/screen/log_in/widget/body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(),
      body: Body(),
    );
  }
}
