import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/test/test_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:edumake_frontend/src/shared/widgets/test_result_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class WardTestScreen extends StatelessWidget {
  const WardTestScreen({super.key});

  static const String routeName = '/ward-test-screen';

  @override
  Widget build(BuildContext context) {
    final args =
        // ignore: cast_nullable_to_non_nullable
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // final schoolName = args['schoolName'];
    final className = args['className'];
    final studentName = args['studentName'];
    // final subjectId = args['subjectId'];
    final subjectName = args['subjectName'];

    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Test Results',
      ),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppSpacing.horizontalSpacing),
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSpacing.verticalSpaceMedium,
                  RichText(
                    text: TextSpan(
                        text: '${AppStrings.subject}: ',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 14.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                            ),
                        children: [
                          TextSpan(
                            text: subjectName.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          )
                        ]),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  RichText(
                    text: TextSpan(
                        text: 'Class: ',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 14.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor,
                            ),
                        children: [
                          TextSpan(
                            text: className.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          )
                        ]),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  const SizedBox(height: 24),
                  BlocBuilder<TestBloc, TestState>(
                    builder: (context, state) {
                      if (state.fetchTestResultsStatus ==
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
                      //////////////////////////////////////////////////////
                      if (state.fetchTestResultsData?.isEmpty ?? true) {
                        return NoDataAvailable(
                          message:
                              '$studentName does not have any test results available for $subjectName at the moment. You will be notified when a test is available.',
                          height: 7,
                        );
                      }
                      if (state.fetchTestResultsStatus ==
                          FormzSubmissionStatus.failure) {
                        return const NoDataAvailable(
                          message: 'Something went wrong',
                          height: 7,
                        );
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New',
                            style: TextStyle(
                              fontSize: 18.fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          AppSpacing.verticalSpaceMedium,
                          ListView.separated(
                            itemCount: state.fetchTestResultsData?.length ?? 0,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final testResults =
                                  state.fetchTestResultsData?[index];
                              // Get the first grade (or you might want to handle multiple grades differently)
                              final testGrade =
                                  testResults?.testResponseGrades.isNotEmpty ==
                                          true
                                      ? testResults?.testResponseGrades[0]
                                      : null;
                              return GestureDetector(
                                child: TestResultTitle(
                                  editIcon: false,
                                  date: formatLocalTime(
                                      testResults?.dateWritten ?? ''),
                                  title: testResults?.title ?? '',
                                  grade: testGrade?.grade ?? 0,
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return AppSpacing.verticalSpaceMedium;
                            },
                          ),
                          Text(
                            'Previous',
                            style: TextStyle(
                              fontSize: 18.fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      );
                    },
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
