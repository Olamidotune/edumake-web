import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_requests/test_result_grade_request.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/test_exams/test_exams_requests/test_result_request.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/test/test_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/exam_result_screen.dart';

import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class ReviewExamScreen extends StatelessWidget {
  const ReviewExamScreen({super.key});

  static const String routeName = 'review exam result';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;

    final title = args['title'];
    final dateWritten = args['dateWritten'];
    final classId = args['classId'];
    final subjectId = args['subjectId'];
    final studentCount = args['studentCount'];
    final grades = args['grades'] as List<Grade>;

    final scroller = ScrollController();
    return BlocBuilder<TestBloc, TestState>(
      buildWhen: (previous, current) {
        return _buildWhen(context, previous, current);
      },
      builder: (context, testState) {
        return Scaffold(
          appBar: const CustomAppBar(
            title: 'Class Name',
          ),
          body: SafeArea(
            child: CustomRawScroller(
              scrollController: scroller,
              child: SingleChildScrollView(
                controller: scroller,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                        decoration: BoxDecoration(
                            color:
                                AppColors.primaryColor.withValues(alpha: .04),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.radius))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            AppSpacing.verticalSpaceMedium,
                            RichText(
                              text: TextSpan(
                                text: 'Date written: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontFamily: 'HelveticaNeueRounded',
                                      fontSize: 13.fontSize,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.greyColor,
                                    ),
                                children: [
                                  TextSpan(
                                    text: ' $dateWritten',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontFamily: 'HelveticaNeueRounded',
                                          fontSize: 13.fontSize,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.primaryTextColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppSpacing.verticalSpaceLarge,
                      Text(
                        'Student ($studentCount)',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 14.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                      AppSpacing.verticalSpaceMedium,
                      BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                        builder: (context, state) {
                          final students = state.getStudentsDatum ?? [];
                          return ListView.separated(
                            itemCount: students.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final student = students[index];
                              return Container(
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ClassesListTileContainer(
                                        color: AppColors.primaryColor
                                            .withOpacity(0.02),
                                        onTap: () {},
                                        isProfilePictureEnabled: true,
                                        title: student.name,
                                        subTitle: context
                                                .read<AuthBloc>()
                                                .state
                                                .school
                                                ?.schoolName ??
                                            '',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: AppSpacing
                                              .horizontalSpacingMedium),
                                      child: Text(
                                        '${grades[index].grade} %',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontFamily:
                                                    'HelveticaNeueRounded',
                                                fontSize: 13.fontSize,
                                                fontWeight: FontWeight.w800,
                                                color: grades[index].grade > 50
                                                    ? AppColors.primaryColor
                                                    : AppColors.redColor),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (_, __) =>
                                AppSpacing.verticalSpaceMedium,
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceHuge,
                      AppSpacing.verticalSpaceHuge,
                      Button(
                        busy: testState.addExamResultStatus ==
                            FormzSubmissionStatus.inProgress,
                        text: 'Save and post',
                        onPressed: () {
                          final result = TestResultRequest(
                            classId: classId.toString(),
                            title: title.toString(),
                            subjectId: subjectId.toString(),
                            dateWritten: dateWritten.toString(),
                            grades: grades,
                          );
                          context
                              .read<TestBloc>()
                              .add(TestEvent.addExamResult(result));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  bool _buildWhen(
    BuildContext context,
    TestState previous,
    TestState current,
  ) {
    if (previous.addExamResultStatus == FormzSubmissionStatus.inProgress &&
        current.addExamResultStatus == FormzSubmissionStatus.success) {
      ToastService.toast('Exam results successfully saved and posted');

      context.read<TestBloc>().add(const TestEvent.setNeedsRefresh(true));

      Navigator.of(context).popAndPushNamed(
        ExamResultScreen.routeName,
      );

      return false;
    } else if (previous.addExamResultStatus ==
            FormzSubmissionStatus.inProgress &&
        current.addExamResultStatus == FormzSubmissionStatus.failure &&
        current.errorMessage != null) {
      ToastService.toast(
        current.errorMessage ?? 'An error occurred',
        ToastType.error,
      );
      context.read<TestBloc>().add(const TestEvent.errorMessage(null));
      return true;
    }
    return true;
  }
}
