import 'package:flutter/material.dart';
import '../styles/colors/app_colors.dart';

class DefaultTextFormField extends StatelessWidget
{
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onSubmit;
  final String? Function(String?) validate;
  final TextInputType type;
  final bool isPassword;

  const DefaultTextFormField({super.key,
    required this.controller,
    required this.hintText,
    required this.validate,
    required this.type,
    this.onSubmit,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.grey2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: AppColors.white,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 20,
            color: AppColors.greyText,
            fontWeight: FontWeight.w600,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 22),
        ),
        keyboardType: type,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        validator: (String? value)
        {
          return validate(value);
        },
      ),
    );
  }
}