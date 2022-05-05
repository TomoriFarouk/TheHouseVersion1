import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/screen/log_in/widget/auth_appbar.dart';
import 'widget/EmailReqResetPassBody.dart';

class EmailReqResetPassword extends StatelessWidget {
  const EmailReqResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(),
      body: EmailReqResetPassBody(),
    );
  }
}
