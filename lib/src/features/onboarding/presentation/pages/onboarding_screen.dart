import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/parents/parents_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/school/school_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/teachers/teachers_onboarding.dart';
import 'package:edumake_frontend/src/shared/services/shared_preferences.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const routeName = 'onboarding-screen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
                AppStrings.welcomeToEDUMAKE,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 90,
              ),
              Button(
                text: AppStrings.next,
                onPressed: () {
                  Navigator.of(context).pushNamed(SignIn.routeName);
                },
              )
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
                AppStrings.trackYourWardsProgressAndEnjoy,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              Text(
                AppStrings.weCategorizeOurUsersIntoTwo,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
                textAlign: TextAlign.justify,
              ),
              AppSpacing.verticalSpaceLarge,
              Button(
                text: AppStrings.continueAsparent,
                onPressed: () async {
                  // Save role to shared preferences
                  await UserRoleHelper.saveUserRole(UserRole.parent);
                  // Navigate to the appropriate screen
                  navigateBasedOnRole(context, UserRole.parent);
                },
              ),
              AppSpacing.verticalSpaceMedium,
              Button(
                text: AppStrings.contineAsSchoolManagement,
                onPressed: () async {
                  // Save role to shared preferences
                  await UserRoleHelper.saveUserRole(UserRole.schoolAdmin);
                  // Navigate to the appropriate screen
                  navigateBasedOnRole(context, UserRole.schoolAdmin);
                },
                buttonColor: Colors.white,
              ),
              AppSpacing.verticalSpaceMedium,
              Button(
                text: AppStrings.continueAsTeacher,
                onPressed: () async {
                  // Save role to shared preferences
                  await UserRoleHelper.saveUserRole(UserRole.teacher);

                  // Navigate to the appropriate screen
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
    case UserRole.parent:
      Navigator.of(context).pushNamed(ParentsOnboarding.routeName);
    case UserRole.schoolAdmin:
      Navigator.of(context).pushNamed(SchoolOnboarding.routeName);
    case UserRole.teacher:
      Navigator.of(context).pushNamed(TeachersOnboarding.routeName);
  }
}
