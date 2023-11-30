import 'package:flutter/material.dart';
import 'package:sprint/modules/auth/login/widget/custom_header_login.dart';
import 'custom_text_button_login.dart';
import 'custom_text_field_login.dart';

class LoginScreenBody extends StatelessWidget
{
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            SizedBox(
              height: height*0.07,
            ),
            const CustomHeaderLogin(),
            const CustomTextFieldLogin(),
            const CustomTextButtonLogin(),
          ],
        ),
      ),
    );
  }
}
