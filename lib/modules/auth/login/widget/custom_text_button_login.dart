import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../shared/components/my_text_button.dart';
import '../../register/register_screen.dart';

class CustomTextButtonLogin extends StatelessWidget
{
  const CustomTextButtonLogin({super.key});

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
            '5'.tr,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          MyTextButton(
            text: '4',
            toUpperCase: false,
            fontSize: 20,
            onPressed: ()
            {
              Get.to(const RegisterScreen());
            },
          ),
        ],
      ),
    );
  }
}