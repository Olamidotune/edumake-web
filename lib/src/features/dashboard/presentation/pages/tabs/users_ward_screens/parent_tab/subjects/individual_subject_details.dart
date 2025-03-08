import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/subjects/subjects_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/test/test_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/test/exam/ward_exam_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/test/ward_test_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/assignment_screen.dart';
import 'package:edumake_frontend/src/shared/dialogs/successful_dialog.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IndividualSubjectDetails extends StatelessWidget {
  const IndividualSubjectDetails({super.key});

  static const String routeName = '/individual-subject-screen';

  @override
  Widget build(BuildContext context) {
    final args =
        // ignore: cast_nullable_to_non_nullable
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final schoolName = args['schoolName'];
    final className = args['className'];
    final studentName = args['studentName'];
    final subjectId = args['subjectId'];
    final subjectName = args['subjectName'];
    final wardId = args['wardId'];
    // final classId = args['classId'];
    final schoolId = args['schoolId'];

    final scrollController = ScrollController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.1),
                    ),
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    height: 250,
                    child: Image.asset(
                      'assets/png/event.png',
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.assignments,
                    onTap: () {
                      context.read<SubjectsBloc>().add(
                            SubjectsEvent.onSelectedSubjectNameChanged(
                                subjectName.toString()),
                          );
                      Navigator.of(
                        context,
                      ).pushNamed(
                        //change to parent assignment screen
                        AssignmentScreen.routeName,
                        arguments: {
                          'schoolName': schoolName,
                          'className': className,
                          'studentName': studentName,
                          'subjectId': subjectId,
                          'subjectName': subjectName,
                          'wardId': wardId
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
                    title: 'Learning Materials',
                  ),
                  AppSpacing.verticalSpaceMedium,
                  ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: 'Test/Exam Results',
                    onTap: () {
                      _showTestAndExamDialog(context, () {
                        context.read<TestBloc>().add(TestEvent.fetchTestResults(
                              wardId.toString(),
                              '',
                              subjectId.toString(),
                              schoolId.toString(),
                            ));
                        Navigator.of(context).pushNamed(
                          WardTestScreen.routeName,
                          arguments: {
                            'schoolName': schoolName,
                            'className': className,
                            'studentName': studentName,
                            'subjectId': subjectId,
                            'subjectName': subjectName,
                            'studentId': schoolId
                            //wardId
                          },
                        );
                      }, () {
                        context.read<TestBloc>().add(TestEvent.fetchExamResults(
                              wardId.toString(),
                              '',
                              subjectId.toString(),
                              schoolId.toString(),
                            ));
                        Navigator.of(context).pushNamed(
                          WardExamScreen.routeName,
                          arguments: {
                            'schoolName': schoolName,
                            'className': className,
                            'studentName': studentName,
                            'subjectId': subjectId,
                            'subjectName': subjectName,
                            'wardId': wardId
                          },
                        );
                      });
                    },
                  ),

                  // ClassesListTileContainer(
                  //   isProfilePictureEnabled: false,
                  //   title: AppStrings.events,
                  //   onTap: () {
                  //     //Can't get event by student...
                  //     Navigator.of(context)
                  //         .pushNamed(ClassEventsScreen.routeName);
                  //   },
                  // ),
                  AppSpacing.verticalSpaceMedium,
                  const ClassesListTileContainer(
                    isProfilePictureEnabled: false,
                    title: AppStrings.analysis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showTestAndExamDialog(BuildContext context, void Function()? onTest,
      void Function()? onExam) async {
    await showDialog<void>(
      context: context,
      builder: (context) {
        return TestAndExamDialog(
          onTestPressed: onTest,
          onExamPressed: onExam,
        );
      },
    );
  }
}
