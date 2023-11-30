import 'package:flutter/material.dart';
import 'widget/forget_password_screen_body.dart';

class ForgetPasswordScreen extends StatelessWidget
{
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forget Password",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: const ForgetPasswordScreenBody(),
    );
  }
}
