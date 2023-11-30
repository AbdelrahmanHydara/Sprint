import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprint/modules/auth/verification/verification_code_screen.dart';
import 'package:sprint/shared/components/my_material_button.dart';
import '../../../../core/functions/valid_in_put.dart';
import '../../../../shared/components/default_text_form_field.dart';
import 'custom_title_reset_password.dart';

class ResetPasswordScreenBody extends StatelessWidget
{
  const ResetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children:
        [
          const CustomTitleResetPassword(),
          DefaultTextFormField(
              controller: TextEditingController(),
              hintText: '7'.tr,
              type: TextInputType.visiblePassword,
              validate: (value) {
                validInput(value: value!, type: '6'.tr, min: 8, max: 50);
                return null;
              }
          ),
          const SizedBox(
            height: 25,
          ),
          DefaultTextFormField(
              controller: TextEditingController(),
              hintText: '13'.tr,
              type: TextInputType.visiblePassword,
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
                text: "Save",
                onTap: (){

                },
            ),
          ),
        ],
      ),
    );
  }
}
