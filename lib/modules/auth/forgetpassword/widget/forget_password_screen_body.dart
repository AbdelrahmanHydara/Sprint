import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint/modules/auth/verification/verification_code_screen.dart';
import 'package:sprint/shared/components/my_material_button.dart';
import '../../../../core/functions/valid_in_put.dart';
import '../../../../shared/components/default_text_form_field.dart';
import 'custom_title_forget_password.dart';

class ForgetPasswordScreenBody extends StatelessWidget
{
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children:
        [
          const CustomTitleForgetPassword(),
          DefaultTextFormField(
              controller: TextEditingController(),
              hintText: '6'.tr,
              type: TextInputType.emailAddress,
              validate: (value) {
                validInput(value: value!, type: '6'.tr, min: 8, max: 50);
                return null;
              }
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 40,
            ),
            child: MyMaterialButton(
                text: "Check",
                onTap: (){
                  Get.off(const VerificationCodeScreen());
                },
            ),
          ),
        ],
      ),
    );
  }
}
