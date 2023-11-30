import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/constants/images_assets.dart';
import '../styles/colors/app_colors.dart';

myDivider() => Container(
  width: double.infinity,
  height: 1,
  color: Colors.grey[200],
);

myCircularProgressIndicator() => const Center(
child: CircularProgressIndicator(
color: AppColors.primaryColor,
),
);

myArrowBack(context) => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 12,
  ),
  child:   GestureDetector(
    onTap: (){ Navigator.pop(context);},
    child: Stack(
      children: [
        const CircleAvatar(
          radius: 28,
          backgroundColor: AppColors.grey2,
        ),
        Positioned(
          right: 0,
          left: 0,
          top: 17,
          child: SvgPicture.asset(ImagesAssets.arrowBack),
        ),
      ],
    ),
  ),
);