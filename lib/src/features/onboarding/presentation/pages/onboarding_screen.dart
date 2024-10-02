import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const routeName = 'onboarding-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: Column(
          children: [
            SizedBox(
              height: .10.sh,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/png/onboarding_background.png',
                ),
                Positioned(
                  top: .17.sh,
                  right: 01.width,
                  left: 01.width,
                  child: Image.asset(
                    'assets/png/onboarding.png',
                    height: 140.height,
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpaceHuge,
            Text(
              "Welcome to Edu-Make, your one-stop portal for staying informed about your child's academic journey. Access real-time updates on grades, attendance, assignments, and more. Easily connect with teachers and parents to support student progress as a school.",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 16.fontSize,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
