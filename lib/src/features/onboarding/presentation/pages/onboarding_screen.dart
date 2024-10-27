import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/parents/parents_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/school/school_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/teachers/teachers_onboarding.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    final l10n = AppLocalizations.of(context)!;
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
                          ? 320.height
                          : 400.height,
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
                l10n.welcomeToEDUMAKE,
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
                text: AppLocalizations.of(context)!.next,
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
    final l10n = AppLocalizations.of(context)!;
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
                l10n.trackYourWardsProgressAndEnjoy,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              Text(
                l10n.weCategorizeOurUsersIntoTwo,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
                textAlign: TextAlign.justify,
              ),
              AppSpacing.verticalSpaceLarge,
              Button(
                text: l10n.continueAsParentStudent,
                onPressed: () {
                  navigateBasedOnRole(context, UserRole.parenStudent);
                },
              ),
              AppSpacing.verticalSpaceMedium,
              Button(
                text: l10n.contineAsSchoolManagement,
                onPressed: () {
                  navigateBasedOnRole(context, UserRole.schoolManagement);
                },
                buttonColor: Colors.white,
              ),
              AppSpacing.verticalSpaceMedium,
              Button(
                text: l10n.continueAsTeacher,
                onPressed: () {
                  print('object');
                  navigateBasedOnRole(context, UserRole.teacher);
                },
                buttonColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void navigateBasedOnRole(BuildContext context, UserRole role) {
  switch (role) {
    case UserRole.parenStudent:
      Navigator.of(context).pushNamed(ParentsOnboarding.routeName);
    case UserRole.schoolManagement:
      Navigator.of(context).pushNamed(SchoolOnboarding.routeName);
    case UserRole.teacher:
      Navigator.of(context).pushNamed(TeachersOnboarding.routeName);
    
  }
}
