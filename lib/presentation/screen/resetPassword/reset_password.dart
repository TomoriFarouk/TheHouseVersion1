import 'package:flutter/material.dart';
import 'package:furniture_ui/presentation/screen/log_in/widget/auth_appbar.dart';

import 'widget/resetPassword_body.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(),
      body: ResetPassBody(),
    );
  }
}
