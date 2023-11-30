import 'package:flutter/material.dart';
import 'widget/reset_password_screen_body.dart';

class ResetPasswordScreen extends StatelessWidget
{
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reset Password",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: const ResetPasswordScreenBody(),
    );
  }
}
