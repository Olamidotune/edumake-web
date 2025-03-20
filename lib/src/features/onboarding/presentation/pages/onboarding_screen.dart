import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/widgets/sign_up_button.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/parents/parents_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/school/school_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/teachers/teachers_onboarding.dart';
import 'package:edumake_frontend/src/shared/services/shared_preferences.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_onboarding_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: ScreenUtil().screenWidth > kMedDesktopWidth
            ? const WebView()
            : const MobileView(),
      ),
    );
  }
}

class WebView extends StatelessWidget {
  const WebView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSpacing.horizontalSpacingMedium),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          AppSpacing.verticalSpaceHuge,
          Image.asset(
            'assets/png/logo.png',
            height: 250,
          ),
          AppSpacing.verticalSpaceHuge,
          Text(
            AppStrings.trackYourWardsProgressAndEnjoy,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 56,
                fontWeight: FontWeight.w300,
                color: AppColors.primaryColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 90,
          ),
          Text(
            AppStrings.weCategorizeOurUsersIntoTwo,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 90,
          ),
          Row(
            spacing: AppSpacing.horizontalSpacingMedium,
            children: [
              Expanded(
                child: WebOnboardingContainer(
                  title: 'Continue as\nStudent',
                  image: 'w_student',
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(OnboardingScreenTwo.routeName);
                  },
                ),
              ),
              Expanded(
                child: WebOnboardingContainer(
                  title: 'Continue as\nParent',
                  image: 'w_parent',
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(OnboardingScreenTwo.routeName);
                  },
                ),
              ),
              Expanded(
                child: WebOnboardingContainer(
                  title: 'Continue as\nTeacher',
                  image: 'w_teacher',
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(OnboardingScreenTwo.routeName);
                  },
                ),
              ),
              Expanded(
                child: WebOnboardingContainer(
                  title: 'Continue as\nSchool Admin',
                  image: 'w_admin',
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(OnboardingScreenTwo.routeName);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  height:
                      MediaQuery.of(context).size.height < kMinSupportedHeight
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
    );
  }
}

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  static const routeName = 'onboarding-screen-two';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenUtil().screenWidth > kMedDesktopWidth
          ? null
          : const CustomAppBar(),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ScreenUtil().screenWidth > kMedDesktopWidth
              ? const _OnBoardingScreenTwoWebView()
              : const _OnBoardingScreenTwoMobileView()),
    );
  }
}

class _OnBoardingScreenTwoWebView extends StatelessWidget {
  const _OnBoardingScreenTwoWebView();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withValues(alpha: .8),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/png/w_onboarding.png',
                    height: 300.height,
                  ),
                  AppSpacing.horizontalSpaceMedium,
                  Text(
                    "Organizing student's data streamlines tracking of progress, enables personalized learning, improves communication with parents, and simplifies administration.",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: AppColors.whiteColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacingSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSpacing.verticalSpaceMassive,
                Text(
                  'Sign up to EduMake',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  AppStrings.welcomeWeAreDelighted,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primaryTextColor.withValues(alpha: .8),
                      ),
                ),
                AppSpacing.verticalSpaceHuge,
                RichText(
                  text: TextSpan(
                    text: AppStrings.alreadyHaveAnAccountWithUs,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color:
                              AppColors.primaryTextColor.withValues(alpha: .8),
                        ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed(SignIn.routeName);
                          },
                        text: ' ${AppStrings.signIn}',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: '',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.verticalSpaceHuge,
                SignUpButton(
                  isWeb: true,
                  text: AppStrings.continueWithGoogle,
                  svgPath: 'assets/svg/google.svg',
                  onPressed: () {},
                ),
                AppSpacing.verticalSpaceMedium,
                SignUpButton(
                  isWeb: true,
                  text: AppStrings.continueWithFacebook,
                  svgPath: 'assets/svg/facebook.svg',
                  onPressed: () {},
                ),
                AppSpacing.verticalSpaceMedium,
                SignUpButton(
                  isWeb: true,
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
      ],
    );
  }
}

class _OnBoardingScreenTwoMobileView extends StatelessWidget {
  const _OnBoardingScreenTwoMobileView();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
