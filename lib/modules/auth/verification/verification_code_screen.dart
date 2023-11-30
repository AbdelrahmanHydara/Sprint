import 'package:flutter/material.dart';
import 'package:sprint/modules/auth/verification/widget/verification_code_screen_body.dart';

class VerificationCodeScreen extends StatelessWidget
{
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verification Code",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: const VerificationCodeScreenBody(),
    );
  }
}
