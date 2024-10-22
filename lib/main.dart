import 'package:edumake_frontend/l10n/l10n.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/forgot_password.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/kyc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/dashboard.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/settings_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/ward_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:edumake_frontend/streams/general_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    GeneralStream.generalStream.add(const Locale('en'));
  }

  @override
  void dispose() {
    GeneralStream.generalStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Locale>(
      stream: GeneralStream.generalStream.stream,
      builder: (context, snapshot) {
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
            home:const SplashScreen(),
            routes: {
              SplashScreen.routeName: (context) => const SplashScreen(),
              ButtonScreen.routeName: (context) => ButtonScreen(
                    locale: snapshot.data ?? const Locale('en'),
                  ),
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
              Dashboard.routeName: (context) => const Dashboard(),
              KycScreen.routeName: (context) => const KycScreen(),
              HomeScreen.routeName: (context) => HomeScreen(),
              WardScreen.routeName: (context) => const WardScreen(),
              SettingsScreen.routeName: (context) => const SettingsScreen(),
            },
            supportedLocales: L10n.locals,
            locale: snapshot.data ?? const Locale('en'),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              AppLocalizations.delegate,
            ],
          ),
        );
      },
    );
  }
}
