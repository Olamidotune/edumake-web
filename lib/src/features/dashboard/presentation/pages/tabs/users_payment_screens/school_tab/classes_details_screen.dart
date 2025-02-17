import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/class_students_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/classes_events_screen.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
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
    // final studentCount = args['studentCount'];
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
                      FormzSubmissionStatus.inProgress) {
                    return SizedBox(
                      height: 800,
                      child: ListView.builder(
                        controller: scrollController,
                        itemBuilder: (context, index) {
                          return const CustomShimmer();
                        },
                        itemCount: 10,
                      ),
                    );
                  }
                  if (state.classesData?.length == 0) {
                    return const Text('Something is wrong');
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
                        trailing:
                            '${state.getStudentsDatum?.length ?? 0} Students',
                        onTap: () {
                          context.read<GetSchoolDataBloc>().add(
                                GetSchoolDataEvent.fetchStudents(
                                  classId.toString(),
                                ),
                              );
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
                          Navigator.of(context).pushNamed(
                            ClassEventsScreen.routeName,
                            arguments: {
                              'className': className,
                            },
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceMedium,
                      const ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.curriculumSchemeOfWork,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      const ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.payments,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      const ClassesListTileContainer(
                        title: AppStrings.lectureTimeTable,
                        isProfilePictureEnabled: false,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      const ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: AppStrings.examManagement,
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
