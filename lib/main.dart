import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/forgot_password.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/kyc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: AppColors.primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'HelveticaNeueRounded',
          scaffoldBackgroundColor: AppColors.whiteColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.whiteColor,
            elevation: 0,
          ),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 32,
              color: AppColors.primaryColor,
            ),
            displayMedium: TextStyle(
              fontSize: 24,
              color: AppColors.primaryColor,
            ),
            bodyLarge: TextStyle(
              fontSize: 16,
              color: AppColors.secondaryColor,
            ),
            bodyMedium: TextStyle(
              fontSize: 14,
              color: AppColors.primaryTextColor,
            ),
            bodySmall: TextStyle(
              fontSize: 12,
              color: AppColors.primaryTextColor,
            ),
          ),
        ),
        home: const SplashScreen(),
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          OnboardingScreen.routeName: (context) => const OnboardingScreen(),
          OnboardingScreenTwo.routeName: (context) =>
              const OnboardingScreenTwo(),
          OnboardingScreenThree.routeName: (context) =>
              const OnboardingScreenThree(),
          SignUpScreen.routeName: (context) => const SignUpScreen(),
          SignIn.routeName: (context) => const SignIn(),
          ForgotPasswordScreen.routeName: (context) =>
              const ForgotPasswordScreen(),
          VerifyAccount.routeName: (context) => const VerifyAccount(),
          KycScreen.routeName: (context) => const KycScreen(),
        },
      ),
    );
  }
}
