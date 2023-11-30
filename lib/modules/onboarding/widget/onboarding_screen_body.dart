import 'package:flutter/material.dart';
import '../../../models/onboarding_model.dart';
import 'build_boarding_item.dart';
import 'custom_indicator_onboarding.dart';

class OnboardingScreenBody extends StatefulWidget
{
  const OnboardingScreenBody({super.key});
  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody>
{
  final PageController boardController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context)
  {
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
      [
        SizedBox(height: height*0.09),
        Expanded(
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: boardController,
            itemBuilder: (context,index) => buildBoardingItem(onBoardingList[index],context),
            itemCount: onBoardingList.length,
            onPageChanged: (int index) {
              if(index == onBoardingList.length-1) {
                setState(() {
                  isLast = true;
                });
              } else {
                setState(() {
                  isLast =false;
                });
              }
            },
          ),
        ),
        SizedBox(height: height*0.17),
        CustomIndicatorOnBoarding(
          isLast: isLast,
          boardController: boardController,),
        SizedBox(height: height*0.057),
      ],
    );
  }
}
