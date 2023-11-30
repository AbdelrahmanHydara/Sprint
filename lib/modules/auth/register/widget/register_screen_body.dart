import 'package:flutter/material.dart';
import 'custom_header_register.dart';
import 'custom_text_button_register.dart';
import 'custom_text_field_register.dart';

class RegisterScreenBody extends StatelessWidget
{
  const RegisterScreenBody({super.key});

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
              height: 0.06*height,
            ),
            const CustomHeaderRegister(),
            const CustomTextFieldRegister(),
            const CustomTextButtonRegister(),
          ],
        ),
      ),
    );
  }
}
