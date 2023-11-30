import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint/modules/auth/login/login_screen.dart';
import '../../../../shared/components/my_text_button.dart';

class CustomTextButtonRegister extends StatelessWidget
{
  const CustomTextButtonRegister({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Text(
            '14'.tr,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          MyTextButton(
            text: '2',
            toUpperCase: false,
            fontSize: 20,
            onPressed: ()
            {
              Get.offAll(const LoginScreen());
            },
          ),
        ],
      ),
    );
  }
}