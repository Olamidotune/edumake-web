import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/widgets/sign_up_button.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ParentsOnboarding extends StatelessWidget {
  const ParentsOnboarding({
    super.key,
  });

  static const routeName = 'parents-onboarding-screen-three';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSpacing.verticalSpaceMassive,
              Text(
                AppStrings.signUpToEDUMAKE,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              Text(
                AppStrings.welcomeWeAreDelighted,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceMedium,
              RichText(
                text: TextSpan(
                  text: AppStrings.alreadyHaveAnAccountWithUs,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontFamily: 'HelveticaNeueRounded',
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primaryTextColor,
                      ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushNamed(SignIn.routeName);
                        },
                      text: AppStrings.signIn,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontFamily: '',
                            fontSize: 16.fontSize,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpaceHuge,
              SignUpButton(
                text: AppStrings.continueWithGoogle,
                svgPath: 'assets/svg/google.svg',
                onPressed: () {},
              ),
              AppSpacing.verticalSpaceMedium,
              SignUpButton(
                text: AppStrings.continueWithFacebook,
                svgPath: 'assets/svg/facebook.svg',
                onPressed: () {},
              ),
              AppSpacing.verticalSpaceMedium,
              SignUpButton(
                text: '     ${AppStrings.continueWithEmail}',
                svgPath: 'assets/svg/email.svg',
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    SignUpScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
