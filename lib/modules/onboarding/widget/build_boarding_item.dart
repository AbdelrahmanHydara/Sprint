import 'package:flutter/material.dart';
import '../../../models/onboarding_model.dart';

buildBoardingItem(OnBoardingModel model, context) => Column(
  children:
  [
    Image(
      image: AssetImage(model.image),
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    const Spacer(),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children:
        [
          Text(
            model.text,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            model.body,
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ],
);