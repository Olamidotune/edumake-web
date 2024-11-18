import 'package:edumake_frontend/l10n/l10n.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/forgot_password.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/kyc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_classes.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_segments.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_students.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_subjects.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_teachers.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/basic_info.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/school_sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/testing/granted_permission.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/subscripton.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/bloc/permissions_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/dashboard.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/settings_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/school_home_screens.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/ward_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/parents/parents_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/school/school_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/select_language_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/teachers/teachers_onboarding.dart';
import 'package:edumake_frontend/src/shared/services/locale_service.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  final userRole = await UserRoleHelper.getUserRole();

  runApp(
    ChangeNotifierProvider(
      create: (context) => LocaleService(prefs),
      child: MyApp(
        initialRole: userRole,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.initialRole});
  final UserRole? initialRole;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PermissionsBloc>(
          create: (context) => PermissionsBloc(),
        ),
      ],
      child: Consumer<LocaleService>(
        builder: (context, value, child) {
          return ScreenUtilInit(
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp(
              locale: value.locale,
              supportedLocales: L10n.locals,
              title: 'Edumake',
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
                SelectLanguageScreen.routeName: (context) =>
                    const SelectLanguageScreen(),
                OnboardingScreen.routeName: (context) =>
                    const OnboardingScreen(),
                OnboardingScreenTwo.routeName: (context) =>
                    const OnboardingScreenTwo(),
                ParentsOnboarding.routeName: (context) =>
                    const ParentsOnboarding(),
                TeachersOnboarding.routeName: (context) =>
                    const TeachersOnboarding(),
                SchoolOnboarding.routeName: (context) =>
                    const SchoolOnboarding(),
                SignUpScreen.routeName: (context) => const SignUpScreen(),
                SchoolSignUpScreen.routeName: (context) =>
                    const SchoolSignUpScreen(),
                SchoolBasicInfoScreen.routeName: (context) =>
                    const SchoolBasicInfoScreen(),
                SchoolSubscriptionScreen.routeName: (context) =>
                    const SchoolSubscriptionScreen(),
                AddManagementSegmentsScreen.routeName: (context) =>
                    const AddManagementSegmentsScreen(),
                AddClassesScreen.routeName: (context) =>
                    const AddClassesScreen(),
                AddSubjectsScreen.routeName: (context) =>
                    const AddSubjectsScreen(),
                AddStudentsScreen.routeName: (context) =>
                    const AddStudentsScreen(),
                AddTeachersScreen.routeName: (context) =>
                    const AddTeachersScreen(),
                ConnectionRequestScreen.routeName: (context) =>
                    const ConnectionRequestScreen(),
                ConnectionRequestDetailsScreen.routeName: (context) =>
                    const ConnectionRequestDetailsScreen(),
                RejectConnectionScreen.routeName: (context) =>
                    const RejectConnectionScreen(),
                RecentTeachersNoteScreen.routeName: (context) =>
                    const RecentTeachersNoteScreen(),
                TeacherDetailsScreen.routeName: (context) =>
                    const TeacherDetailsScreen(),
                SignIn.routeName: (context) => const SignIn(),
                GrantedPermissionsScreen.routeName: (context) =>
                    const GrantedPermissionsScreen(),
                ForgotPasswordScreen.routeName: (context) =>
                    const ForgotPasswordScreen(),
                VerifyAccount.routeName: (context) => const VerifyAccount(),
                Dashboard.routeName: (context) => const Dashboard(),
                KycScreen.routeName: (context) => const KycScreen(),
                HomeScreen.routeName: (context) => const HomeScreen(),
                WardScreen.routeName: (context) => const WardScreen(),
                SettingsScreen.routeName: (context) => const SettingsScreen(),
              },
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                AppLocalizations.delegate,
              ],
            ),
          );
        },
      ),
    );
  }
}
