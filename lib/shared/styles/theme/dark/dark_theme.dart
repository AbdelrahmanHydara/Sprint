import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../colors/app_colors.dart';

ThemeData darkThemeEn = ThemeData(
  scaffoldBackgroundColor: AppColors.background,
  fontFamily: "Blinker",
  appBarTheme: const AppBarTheme(
    color: AppColors.background,
    elevation: 0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.background,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
    displayMedium: TextStyle(
      fontSize: 30,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: TextStyle(
      fontSize: 22,
      color: AppColors.greyText,
    ),
    titleMedium:TextStyle(
      fontSize: 30,
      color: AppColors.greyText,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: AppColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  ),
);



ThemeData darkThemeAr = ThemeData(
  scaffoldBackgroundColor: AppColors.background,
  fontFamily: "Blinker",
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.background,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
    displaySmall: TextStyle(
      fontSize: 22,
      color: AppColors.greyText,
    ),
  ),
);