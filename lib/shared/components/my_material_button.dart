import 'package:flutter/material.dart';
import '../styles/colors/app_colors.dart';

class MyMaterialButton extends StatelessWidget
{
  final String text;
  final Function() onTap;
  final double radius;
  final double width;
  final double height;

  const MyMaterialButton({super.key,
    required this.text,
    required this.onTap,
    this.width = double.infinity,
    this.height = 50,
    this.radius = 1000,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}