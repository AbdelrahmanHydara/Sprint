import 'package:flutter/material.dart';

class CustomTitleResetPassword extends StatelessWidget
{
  const CustomTitleResetPassword({super.key});

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
          "New Password",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
            height: 10
        ),
        Text(
          "Please Enter New Password",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
