import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/widgets/sign_up_button.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const routeName = 'onboarding-screen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool _isBusy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/png/onboarding_background.png',
                      height: MediaQuery.of(context).size.height <
                              kMinSupportedHeight
                          ? 300.height
                          : 500.height,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    bottom: 0.01.height,
                    child: Image.asset(
                      'assets/png/onboarding.png',
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpaceHuge,
              Text(
                "Welcome to Edu-Make, your one-stop portal for staying informed about your child's academic journey. Access real-time updates on grades, attendance, assignments, and more. Easily connect with teachers and parents to support student progress as a school.",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              Button(
                busy: _isBusy,
                text: 'Next',
                onPressed: () {
                  setState(() {
                    _isBusy = !_isBusy;
                  });
                  Future.delayed(
                    const Duration(seconds: 1),
                    () {
                      Navigator.of(context)
                          .pushNamed(OnboardingScreenTwo.routeName);
                      setState(
                        () => _isBusy = false,
                      );
                    },
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

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  static const routeName = 'onboarding-screen-two';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSpacing.verticalSpaceMassive,
              Text(
                "Track your wards' progress and enjoy ease in school management.",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
                
              ),
              AppSpacing.verticalSpaceSmall,
              Text(
                'We categorize our users into two, this is to ensure that you have an amazing and stress-free user experience. However, our app is flexible so can switch anytime you want.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
                textAlign: TextAlign.justify,
              ),
              AppSpacing.verticalSpaceLarge,
              Button(
                text: 'Continue as Parent / Student',
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(OnboardingScreenThree.routeName);
                },
              ),
              AppSpacing.verticalSpaceMedium,
              Button(
                text: 'Continue as School Management',
                onPressed: () {},
                buttonColor: Colors.white,
              ),
              AppSpacing.verticalSpaceMedium,
              Button(
                text: 'Continue as Teacher',
                onPressed: () {},
                buttonColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

  static const routeName = 'onboarding-screen-three';

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
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceMedium,
              RichText(
                text: TextSpan(
                  text: 'Already have an account with us? ',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontFamily: 'HelveticaNeueRounded',
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primaryTextColor,
                      ),
                  children: [
                    TextSpan(
                      text: 'Sign in',
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
                text: 'Continue with Google',
                svgPath: 'assets/svg/google.svg',
                onPressed: () {},
              ),
              AppSpacing.verticalSpaceMedium,
              SignUpButton(
                text: 'Continue with Facebook',
                svgPath: 'assets/svg/facebook.svg',
                onPressed: () {},
              ),
              AppSpacing.verticalSpaceMedium,
              SignUpButton(
                text: '     Continue with Email',
                svgPath: 'assets/svg/email.svg',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
