import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../styles/colors/app_colors.dart';

class MyTextButton extends StatelessWidget
{

  final Function() onPressed;
  final String text;
  final double fontSize;
  final bool toUpperCase;
  final TextAlign? textAlign;

  const MyTextButton({
    super.key,required
    this.onPressed,
    required this.text,
    required this.fontSize,
    this.toUpperCase = false,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context)
  {
    return TextButton(
      onPressed: onPressed ,
      child: Text(
        toUpperCase? text.toUpperCase().tr : text.tr,
        style: TextStyle(
          fontSize: fontSize,
          color: AppColors.white,
          fontWeight: FontWeight.w600,
        ),
        textAlign: textAlign,
      ),
    );
  }
}