import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/exam/exam_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/subjects/subjects_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/timetable/timetable_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/class_students_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/individual_student_assignment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/lecture_timetable/lecture_time_table_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/payments/class_payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/exam_time_table.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class ClassDetailsScreen extends StatefulWidget {
  const ClassDetailsScreen({super.key});

  static const String routeName = '/class-details';

  @override
  State<ClassDetailsScreen> createState() => _ClassDetailsScreenState();
}

class _ClassDetailsScreenState extends State<ClassDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, Object>;
    final className = args['className'];
    final classId = args['classId'];
    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                builder: (context, state) {
                  if (state.fetchStudentsStatus ==
                      FormzSubmissionStatus.failure) {
                    return Center(
                      child: NoDataAvailable(
                        message: 'Something Went Wrong',
                        height: 5.height,
                      ),
                    );
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        className.toString(),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 24.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                            ),
                      ),
                      AppSpacing.verticalSpaceMedium,
                      ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.students,
                        trailing: state.fetchStudentsStatus ==
                                FormzSubmissionStatus.inProgress
                            ? 'Loading...'
                            : '${state.getStudentsDatum?.length ?? 0} ${state.getStudentsDatum?.length == 1 ? 'Student' : 'Students'}',
                        onTap: () {
                          if (state.getStudentsDatum != null &&
                              state.getStudentsDatum!.isNotEmpty) {
                            Navigator.of(context).pushNamed(
                              ClassStudentsScreen.routeName,
                              arguments: {
                                'className': className,
                                'studentCount': className,
                                'classId': classId,
                              },
                            );
                          } else {
                            ToastService.toast(
                              'There are no students in $className',
                              ToastType.info,
                            );
                          }
                        },
                      ),
                      AppSpacing.verticalSpaceMedium,
                      const ClassesListTileContainer(
                        // onTap: () => Navigator.of(context).pushNamed(
                        //   //
                        //   AssignmentScreen.routeName,
                        //   arguments: {
                        //     // 'studentName': studentName,
                        //     'className': className,
                        //     // 'schoolName': schoolName,
                        //   },
                        // ),
                        title: AppStrings.assignments,
                        isProfilePictureEnabled: false,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      const ClassesListTileContainer(
                        title: AppStrings.testRests,
                        isProfilePictureEnabled: false,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      const ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.examResults,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.events,
                        onTap: () {
                          context.read<EventsBloc>().add(
                                EventsEvent.fetchEventsByClass(
                                    null, classId.toString()),
                              );
                          Navigator.of(context).pushNamed(
                            ClassEventsScreen.routeName,
                            arguments: {
                              'className': className,
                              'classId': classId,
                            },
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceMedium,
                      ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.curriculumSchemeOfWork,
                        onTap: () {
                          context.read<SubjectsBloc>().add(
                              SubjectsEvent.fetchClassSubjects(
                                  classId.toString()));
                          Navigator.of(context).pushNamed(
                            IndividualStudentAssignmentScreen.routeName,
                            arguments: {
                              'studentName': '',
                              'className': className,
                              'schoolName': context
                                      .read<AuthBloc>()
                                      .state
                                      .user
                                      ?.school
                                      ?.schoolName ??
                                  '',
                              'studentId': '',
                              'source': 'curriculum',
                            },
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceMedium,
                      ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.payments,
                        onTap: () {
                          context
                              .read<FeesPaymentBloc>()
                              .add(const FeesPaymentEvent.fetchFees(null, ''));
                          Navigator.of(context).pushNamed(
                            ClassPaymentScreen.routeName,
                            arguments: {
                              'classId': classId,
                              'className': className,
                              'schoolName': context
                                      .read<AuthBloc>()
                                      .state
                                      .user
                                      ?.school
                                      ?.schoolName ??
                                  '',
                            },
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceMedium,
                      ClassesListTileContainer(
                        title: AppStrings.lectureTimeTable,
                        isProfilePictureEnabled: false,
                        onTap: () {
                          context.read<TimetableBloc>().add(
                                TimetableEvent.fetchTimetable(
                                    classId.toString(), null),
                              );
                          Navigator.of(context).pushNamed(
                            LectureTimeTableScreen.routeName,
                            arguments: {
                              'className': className,
                              'classId': classId,
                            },
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceMedium,
                      ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.examManagement,
                        onTap: () {
                          context.read<ExamBloc>().add(
                                ExamEvent.fetchTimetable(
                                    classId.toString(), null),
                              );
                          Navigator.of(context).pushNamed(
                            ExamTimeTableScreen.routeName,
                            arguments: {
                              'className': className,
                              'classId': classId,
                            },
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
