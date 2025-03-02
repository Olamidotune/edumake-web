import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/subjects/subjects_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/individual_student_assignment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/individual_students_subject_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/payments/individual_student_fees_payment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/students_details_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class StudentDetailsScreen extends StatelessWidget {
  const StudentDetailsScreen({super.key});

  static const String routeName = '/class-assignments';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentName = args['studentName'];
    final className = args['className'];
    final schoolName = args['schoolName'];
    final studentId = args['studentId'];
    final classId = args['classId'];

    final scrollController = ScrollController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 50,
                          child: SvgPicture.asset(
                            'assets/svg/people.svg',
                          ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Text(
                          studentName.toString(),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 16.fontSize,
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.blackColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/grad_cap.svg',
                              color: AppColors.primaryColor,
                            ),
                            AppSpacing.horizontalSpaceSmall,
                            Text(
                              schoolName!.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: AppColors.primaryColor,
                              size: 12.fontSize,
                            ),
                            AppSpacing.horizontalSpaceSmall,
                            Text(
                              className.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceHuge,
                  StudentDetailsListTile(
                    leading: AppStrings.assignments,
                    onTap: () {
                      context.read<SubjectsBloc>().add(
                            SubjectsEvent.fetchSubjectForStudent(
                                studentId.toString()),
                          );
                      Navigator.of(context).pushNamed(
                        IndividualStudentAssignmentScreen.routeName,
                        arguments: {
                          'studentName': studentName,
                          'className': className,
                          'schoolName': schoolName,
                          'studentId': studentId,
                        },
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.test,
                    onTap: () {
                      context.read<SubjectsBloc>().add(
                            const SubjectsEvent.onSelectedSubjectNameChanged(
                              null,
                            ), // Reset subject name
                          );
                      context.read<SubjectsBloc>().add(
                            SubjectsEvent.onSelectedStudentId(
                              studentId.toString(),
                            ),
                          );
                      context.read<SubjectsBloc>().add(
                            SubjectsEvent.fetchSubjectForStudent(
                              studentId.toString(),
                            ),
                          );
                      Navigator.of(context).pushNamed(
                        IndividualStudentSubjectScreen.routeName,
                        arguments: {
                          'studentName': studentName.toString(),
                          'className': className.toString(),
                          'schoolName': schoolName.toString(),
                          'classId': classId.toString(),
                          'studentId': studentId.toString(),
                          'source': 'test',
                        },
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.exam,
                    onTap: () {
                      context.read<SubjectsBloc>().add(
                            const SubjectsEvent.onSelectedSubjectNameChanged(
                              null,
                            ), // Reset subject name
                          );

                      context.read<SubjectsBloc>().add(
                            SubjectsEvent.onSelectedStudentId(
                              studentId.toString(),
                            ),
                          );
                      context.read<SubjectsBloc>().add(
                            SubjectsEvent.fetchSubjectForStudent(
                              studentId.toString(),
                            ),
                          );
                      Navigator.of(context).pushNamed(
                        IndividualStudentSubjectScreen.routeName,
                        arguments: {
                          'studentName': studentName.toString(),
                          'className': className.toString(),
                          'schoolName': schoolName.toString(),
                          'classId': classId.toString(),
                          'studentId': studentId.toString(),
                          'source': 'exam',
                        },
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.connectedAccounts,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.teachersNote,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.analysis,
                    onTap: () {},
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.feesPayment,
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        IndividualStudentFeesPaymentScreen.routeName,
                        arguments: {
                          'studentName': studentName.toString(),
                          'className': className.toString(),
                          'schoolName': schoolName.toString(),
                          'classId': classId.toString(),
                          'studentId': studentId.toString(),
                          'source': 'exam',
                        },
                      );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  StudentDetailsListTile(
                    leading: AppStrings.paymentHistory,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
