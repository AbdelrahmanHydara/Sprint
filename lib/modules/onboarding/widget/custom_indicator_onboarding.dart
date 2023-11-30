import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sprint/modules/auth/login/login_screen.dart';
import '../../../core/constants/images_assets.dart';
import '../../../models/onboarding_model.dart';
import '../../../shared/styles/colors/app_colors.dart';

class CustomIndicatorOnBoarding extends StatelessWidget
{
  final PageController boardController;
  final bool isLast;

  const CustomIndicatorOnBoarding({super.key,
    required this.boardController,
    required this.isLast});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children:
        [
          SmoothPageIndicator(
            controller: boardController,
            count: onBoardingList.length,
            effect: ExpandingDotsEffect(
              dotWidth: 10,
              dotHeight: 10,
              expansionFactor: 3,
              spacing: 5,
              dotColor: AppColors.primaryColor.withOpacity(0.25),
              activeDotColor: AppColors.primaryColor,
            ),
          ),// your preferred effect
          const Spacer(),
          GestureDetector(
            onTap: (){
              if(isLast)
              {
                Get.offAll(const LoginScreen());
              } else
              {
                boardController.nextPage(duration: const Duration(
                  milliseconds: 800,
                ), curve: Curves.easeInOut,
                );
              }
            },
            child: CircleAvatar(
              radius: 26,
              backgroundColor: AppColors.primaryColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.background,
                child: SvgPicture.asset(
                  ImagesAssets.arrowRight,
                  height: 18,
                  width: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
