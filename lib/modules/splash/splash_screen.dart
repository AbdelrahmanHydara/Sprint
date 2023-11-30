import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import '../../shared/styles/colors/app_colors.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    Future.delayed(
        const Duration(
          seconds: 1,
        ),()
    {
      Get.offAll(const OnBoardingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: AppColors.splashBgColor,
      body: Center(
          child: Text(
            'Sprint',
            style: TextStyle(
              color: Color(0xFFF1F1F1),
              fontSize: 66,
              fontWeight: FontWeight.w700,
            ),
          ),
      ),
    );
  }
}