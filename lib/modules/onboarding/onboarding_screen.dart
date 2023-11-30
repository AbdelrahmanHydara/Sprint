import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint/modules/auth/login/login_screen.dart';
import '../../shared/components/my_text_button.dart';
import 'widget/onboarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget
{
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        actions: [
          MyTextButton(
            onPressed: ()
            {
              Get.offAll(const LoginScreen());
            }, text: 'Skip', fontSize: 25,
          ),
        ],
      ),
      body: const OnboardingScreenBody(),
    );
  }
}
