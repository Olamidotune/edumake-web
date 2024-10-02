import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
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
                children: [
                  Image.asset(
                    'assets/png/onboarding_background.png',
                  ),
                  Positioned(
                    right: 01.width,
                    left: 01.width,
                    child: SizedBox(
                      height: 500,
                      child: Image.asset(
                        'assets/png/onboarding.png',
                        height: 140,
                      ),
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
    return const Scaffold();
  }
}
