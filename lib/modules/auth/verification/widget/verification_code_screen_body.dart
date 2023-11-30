import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../shared/styles/colors/app_colors.dart';
import '../../resetpassword/reset_password_screen.dart';
import 'custom_title_verification_code.dart';

class VerificationCodeScreenBody extends StatelessWidget
{
  const VerificationCodeScreenBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children:
        [
          const CustomTitleVerificationCode(),
          OtpTextField(
            fieldWidth: 65,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: AppColors.white,
            focusedBorderColor: AppColors.primaryColor,
            cursorColor: AppColors.white,
            showFieldAsBox: true,
            onCodeChanged: (String code) {},
            onSubmit: (String verificationCode)
            {
              Get.off(const ResetPasswordScreen());
            }, // end onSubmit
          ),
        ],
      ),
    );
  }
}
