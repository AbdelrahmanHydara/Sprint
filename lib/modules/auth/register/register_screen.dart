import 'package:flutter/material.dart';
import '../../../core/functions/alert_exit_app.dart';
import '../../../shared/components/components.dart';
import 'widget/register_screen_body.dart';

class RegisterScreen extends StatelessWidget
{
  const RegisterScreen({super.key});

  @override

  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: myArrowBack(context),
      ),
      body: const WillPopScope(
          onWillPop: alertExitApp,
          child: RegisterScreenBody(),
      ),
    );
  }
}
