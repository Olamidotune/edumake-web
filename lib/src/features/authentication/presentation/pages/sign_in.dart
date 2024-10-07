import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignIn extends HookWidget {
  const SignIn({super.key});

  static const routeName = 'sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Sign Up to \nEdu-Make',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 32.fontSize,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            AppSpacing.verticalSpaceSmall,
            Text(
              'Welcome, we are delighted to have you here.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12.fontSize,
                    fontWeight: FontWeight.w300,
                  ),
              textAlign: TextAlign.justify,
            ),
            AppSpacing.verticalSpaceLarge,
          ],
        ),
      ),
    );
  }
}
