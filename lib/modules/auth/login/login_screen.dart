import 'package:flutter/material.dart';
import '../../../core/functions/alert_exit_app.dart';
import 'widget/login_screen_body.dart';

class LoginScreen extends StatelessWidget
{
  const LoginScreen({super.key});

  @override

  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: const WillPopScope(
          onWillPop: alertExitApp,
          child: LoginScreenBody(),
      ),
    );
  }
}
