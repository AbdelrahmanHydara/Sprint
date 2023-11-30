import 'package:flutter/material.dart';

class CustomTitleVerificationCode extends StatelessWidget
{
  const CustomTitleVerificationCode({super.key});

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
          "Check Code",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
            height: 10
        ),
        Text(
          "Please Enter The Digit Code",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
