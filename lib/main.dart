import 'package:edumake_frontend/firebase_options.dart';
import 'package:edumake_frontend/l10n/l10n.dart';
import 'package:edumake_frontend/service_locator.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/kyc/kyc_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_data_upload/add_subjects/bloc/add_subjects_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_data_upload/school_data_upload_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_kyc/school_kyc_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/create_new_password.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/forgot_password.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/kyc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_classes.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_management_segments.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_students.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_subjects.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_teachers.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/test_values.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/basic_info/basic_info.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/connection_request_details_screen.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/connection_request_screen.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/connection_requests/reject_connection_screen.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/school_sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/testing/granted_permission.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up/sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/subscription.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/teachers_password_screen.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_forgot_password.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/curriculum/curriculum_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/exam/exam_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/get_wards/get_wards_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/search/search_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/wards_mgt/send_request_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/permissions/permissions_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/requests/requests_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/subjects/subjects_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/test/test_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/timetable/timetable_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/dashboard.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/settings_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/teacher_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/parent_tab/fees_datails.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/parent_tab/parent_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/class_students_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/classes_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/curriculum/add_curriculum_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/curriculum/curriculum_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/add_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_event_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/edit_event_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/individual_student_assignment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/individual_students_subject_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/lecture_timetable/add_lecture_time_table.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/lecture_timetable/lecture_time_table_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/payments/class_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/payments/individual_student_payment_history_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/payments/individual_student_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/student_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/add_exam_results.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/add_exam_time_table.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/add_test_results.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/class_exam_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/class_test_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/exam_result_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/exam_time_table.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/review_exam.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/review_test.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/test_result_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/parent_menu_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/privacy_policy.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/support.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/terms_and_conditions.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/add_fees_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_issue_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/school_menu_screens.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/subjects/individual_subject_details.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/subjects/ward_subject_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/test/exam/ward_exam_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/test/ward_test_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/ward_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/teacher_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/ward_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/parents/parents_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/school/school_onboarding.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/select_language_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/teachers/teachers_onboarding.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:edumake_frontend/src/shared/services/locale_service.dart';
import 'package:edumake_frontend/src/shared/services/notification_service.dart';
import 'package:edumake_frontend/src/shared/services/persistence_services.dart';
import 'package:edumake_frontend/src/shared/services/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await NotificationService.instance.initialize();
  final prefs = await SharedPreferences.getInstance();
  final userRole = await UserRoleHelper.getUserRole();

  await dotenv.load();
  await setupLocator();

  // Initializing singleton instance.
  AuthServices();

  final hasAuthenticatedBefore =
      await PersistenceServices().getHasAuthenticatedBefore();

  runApp(
    ChangeNotifierProvider(
      create: (context) => LocaleService(prefs),
      child: MyApp(
        initialRole: userRole,
        hasAuthenticatedBefore: hasAuthenticatedBefore,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.initialRole,
    this.authenticated = false,
    this.hasAuthenticatedBefore = false,
  });
  final UserRole? initialRole;
  final bool authenticated;
  final bool hasAuthenticatedBefore;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<KycBloc>(
          create: (context) => KycBloc(),
        ),
        BlocProvider<SchoolKycBloc>(
          create: (context) => SchoolKycBloc(),
        ),
        BlocProvider<SchoolDataUploadBloc>(
          create: (context) => SchoolDataUploadBloc(),
        ),
        BlocProvider<GetSchoolDataBloc>(
          create: (context) => GetSchoolDataBloc(),
        ),
        BlocProvider<AddSubjectsBloc>(
          create: (context) => AddSubjectsBloc(),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(),
        ),
        BlocProvider<SendRequestBloc>(
          create: (context) => SendRequestBloc(),
        ),
        BlocProvider<GetWardsBloc>(
          create: (context) => GetWardsBloc(),
        ),
        BlocProvider<RequestsBloc>(
          create: (context) => RequestsBloc(),
        ),
        BlocProvider<EventsBloc>(
          create: (context) => EventsBloc(),
        ),
        BlocProvider<TestBloc>(
          create: (context) => TestBloc(),
        ),
        BlocProvider<TimetableBloc>(
          create: (context) => TimetableBloc(),
        ),
        BlocProvider<SubjectsBloc>(
          create: (context) => SubjectsBloc(),
        ),
        BlocProvider<ExamBloc>(
          create: (context) => ExamBloc(),
        ),
        BlocProvider<CurriculumBloc>(
          create: (context) => CurriculumBloc(),
        ),
        BlocProvider<FeesPaymentBloc>(
          create: (context) => FeesPaymentBloc(),
        ),
        BlocProvider<PermissionsBloc>(
          create: (context) => PermissionsBloc(),
        ),
      ],
      child: ToastificationWrapper(
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
                initialRoute: SplashScreen.routeName,
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
                  ClassDetailsScreen.routeName: (context) =>
                      const ClassDetailsScreen(),
                  SignIn.routeName: (context) => const SignIn(),
                  GrantedPermissionsScreen.routeName: (context) =>
                      const GrantedPermissionsScreen(),
                  ForgotPasswordScreen.routeName: (context) =>
                      const ForgotPasswordScreen(),
                  ClassStudentsScreen.routeName: (context) =>
                      const ClassStudentsScreen(),
                  StudentDetailsScreen.routeName: (context) =>
                      const StudentDetailsScreen(),
                  IndividualSubjectDetails.routeName: (context) =>
                      const IndividualSubjectDetails(),
                  IndividualStudentAssignmentScreen.routeName: (context) =>
                      const IndividualStudentAssignmentScreen(),
                  IndividualStudentPaymentHistoryScreen.routeName: (context) =>
                      const IndividualStudentPaymentHistoryScreen(),
                  ClassEventsScreen.routeName: (context) =>
                      const ClassEventsScreen(),
                  ClassEventDetailsScreen.routeName: (context) =>
                      const ClassEventDetailsScreen(),
                  WardTestScreen.routeName: (context) => const WardTestScreen(),
                  WardExamScreen.routeName: (context) => const WardExamScreen(),
                  AddEventsScreen.routeName: (context) =>
                      const AddEventsScreen(),
                  EditEventScreen.routeName: (context) =>
                      const EditEventScreen(),
                  SchoolMenuScreen.routeName: (context) =>
                      const SchoolMenuScreen(),
                  WardDetailScreen.routeName: (context) =>
                      const WardDetailScreen(),
                  AssignmentScreen.routeName: (context) =>
                      const AssignmentScreen(),
                  ParentPaymentScreen.routeName: (context) =>
                      const ParentPaymentScreen(),
                  ParentMenuScreen.routeName: (context) =>
                      const ParentMenuScreen(),
                  VerifyAccount.routeName: (context) => const VerifyAccount(),
                  VerifyForgotPassword.routeName: (context) =>
                      const VerifyForgotPassword(),
                  CreateNewPassword.routeName: (context) =>
                      const CreateNewPassword(),
                  WardSubjectScreen.routeName: (context) =>
                      const WardSubjectScreen(),
                  PrivacyPolicy.routeName: (context) => const PrivacyPolicy(),
                  TestResultsScreen.routeName: (context) =>
                      const TestResultsScreen(),
                  ClassTestScreen.routeName: (context) =>
                      const ClassTestScreen(),
                  ClassExamScreen.routeName: (context) =>
                      const ClassExamScreen(),
                  ExamResultScreen.routeName: (context) =>
                      const ExamResultScreen(),
                  AddTestResultsScreen.routeName: (context) =>
                      const AddTestResultsScreen(),
                  AddExamResultsScreen.routeName: (context) =>
                      const AddExamResultsScreen(),
                  LectureTimeTableScreen.routeName: (context) =>
                      const LectureTimeTableScreen(),
                  AddLectureTimeTableScreen.routeName: (context) =>
                      const AddLectureTimeTableScreen(),
                  AddExamTimeTableScreen.routeName: (context) =>
                      const AddExamTimeTableScreen(),
                  ReviewExamScreen.routeName: (context) =>
                      const ReviewExamScreen(),
                  ReviewTestScreen.routeName: (context) =>
                      const ReviewTestScreen(),
                  IndividualStudentSubjectScreen.routeName: (context) =>
                      const IndividualStudentSubjectScreen(),
                  TermsAndConditions.routeName: (context) =>
                      const TermsAndConditions(),
                  FeePaymentScreen.routeName: (context) =>
                      const FeePaymentScreen(),
                  TeachersPasswordScreen.routeName: (context) =>
                      const TeachersPasswordScreen(),
                  FeesDetailsScreen.routeName: (context) =>
                      const FeesDetailsScreen(),
                  ClassPaymentScreen.routeName: (context) =>
                      const ClassPaymentScreen(),
                  FeesIssueScreen.routeName: (context) =>
                      const FeesIssueScreen(),
                  IndividualStudentFeesDetailsScreen.routeName: (context) =>
                      const IndividualStudentFeesDetailsScreen(),
                  IndividualStudentPaymentScreen.routeName: (context) =>
                      const IndividualStudentPaymentScreen(),
                  AddFeesPaymentScreen.routeName: (context) =>
                      const AddFeesPaymentScreen(),
                  CurriculumScreen.routeName: (context) =>
                      const CurriculumScreen(),
                  AddCurriculumScreen.routeName: (context) =>
                      const AddCurriculumScreen(),
                  ExamTimeTableScreen.routeName: (context) =>
                      const ExamTimeTableScreen(),
                  Support.routeName: (context) => const Support(),
                  Dashboard.routeName: (context) => const Dashboard(),
                  KycScreen.routeName: (context) => const KycScreen(),
                  HomeScreen.routeName: (context) => const HomeScreen(),
                  SendComplaintScreen.routeName: (context) =>
                      const SendComplaintScreen(),
                  WardScreen.routeName: (context) => const WardScreen(),
                  DynamicTextFieldList.routeName: (context) =>
                      const DynamicTextFieldList(),
                  SettingsScreen.routeName: (context) => const SettingsScreen(),
                },
                // localizationsDelegates: const [
                //   GlobalMaterialLocalizations.delegate,
                //   GlobalWidgetsLocalizations.delegate,
                //   GlobalCupertinoLocalizations.delegate,
                //   AppLocalizations.delegate,
                // ],
              ),
            );
          },
        ),
      ),
    );
  }
}
