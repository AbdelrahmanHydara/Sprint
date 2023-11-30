import 'package:flutter/material.dart';

class CustomTitleForgetPassword extends StatelessWidget
{
  const CustomTitleForgetPassword({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        const SizedBox(
          height: 30,
        ),
        Text(
          "Check Email",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
            height: 10
        ),
        Text(
          "Please Enter Your Email Address",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
