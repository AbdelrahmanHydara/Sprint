import 'package:sprint/core/constants/images_assets.dart';

class OnBoardingModel
{
  final String image;
  final String text;
  final String body;

  OnBoardingModel({
    required this.text,
    required this.body,
    required this.image});
}


List<OnBoardingModel> onBoardingList =
[
  OnBoardingModel(
      image: ImagesAssets.onBoardingOne,
      text: 'Analysis',
      body: 'A sleek black joystick with neon accents and a comfortable grip for pregrip for precise gaming control'
  ),
  OnBoardingModel(
      image: ImagesAssets.onBoardingTow,
      text: 'Analysis',
      body: 'A sleek black joystick with neon accents and a comfortable grip for pregrip for precise gaming control'
  ),
  OnBoardingModel(
      image: ImagesAssets.onBoardingThree,
      text: 'Analysis',
      body: 'A sleek black joystick with neon accents and a comfortable grip for pregrip for precise gaming control'
  ),
];