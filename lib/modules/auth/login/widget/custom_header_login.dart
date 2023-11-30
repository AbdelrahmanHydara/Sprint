import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomHeaderLogin extends StatelessWidget
{
  const CustomHeaderLogin({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "3".tr,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}