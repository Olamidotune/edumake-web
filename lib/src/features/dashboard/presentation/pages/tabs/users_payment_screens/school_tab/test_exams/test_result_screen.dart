// ignore_for_file: prefer_is_empty, use_if_null_to_convert_nulls_to_bools

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/test/test_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/test_exams/add_test_results.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:edumake_frontend/src/shared/widgets/test_result_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class TestResultsScreen extends StatelessWidget {
  const TestResultsScreen({Key? key}) : super(key: key);

  static const String routeName = 'test_result';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final searchController = TextEditingController();

    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;

    final studentName = args['studentName'];
    final className = args['className'];
    final schoolName = args['schoolName'];
    final classId = args['classId'];
    final studentId = args['studentId'];
    final subjectId = args['subjectId'];

    return Scaffold(
      appBar: CustomAppBar(
        title: '$studentName',
        subtitle: '$schoolName. ($className)',
      ),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSpacing.verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.test,
                      style: TextStyle(
                        fontSize: 20.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/plus1.svg',
                            color: AppColors.primaryColor,
                          ),
                          AppSpacing.horizontalSpaceSmall,
                          Text(
                            AppStrings.addTestResults,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          AddTestResultsScreen.routeName,
                          arguments: {
                            'classId': classId,
                            'studentId': studentId,
                            'subjectId': subjectId,
                          },
                        );
                      },
                    ),
                  ],
                ),
                AppSpacing.verticalSpaceMedium,
                CustomSearchBar(
                  isHomePage: false,
                  isActive: false,
                  textEditingController: searchController,
                ),
                const SizedBox(height: 24),
                BlocBuilder<TestBloc, TestState>(
                  builder: (context, state) {
                    if (state.fetchSubjectTestResultsStatus ==
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
                    if (state.fetchSubjectTestResultsData?.isEmpty ?? true) {
                      return const NoDataAvailable(
                        message: 'No tests available for this subject',
                        height: 7,
                      );
                    }
                    if (state.fetchSubjectTestResultsStatus ==
                        FormzSubmissionStatus.failure) {
                      return const NoDataAvailable(
                        message: 'Something went wrong',
                        height: 7,
                      );
                    }
                    return Column(
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
                          itemCount:
                              state.fetchSubjectTestResultsData?.length ?? 0,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final testResults =
                                state.fetchSubjectTestResultsData?[index];
                            // Get the first grade (or you might want to handle multiple grades differently)
                            final testGrade =
                                testResults?.grades.isNotEmpty == true
                                    ? testResults?.grades[0]
                                    : null;
                            return TestResultTitle(
                              date: formatLocalTime(
                                  testResults?.dateWritten ?? ''),
                              title: testResults?.title ?? '',
                              grade: testGrade?.grade ?? 0,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return AppSpacing.verticalSpaceMedium;
                          },
                        ),
                        const Text(
                          'Previous',
                          style: TextStyle(
                            fontSize: 18,
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
    );
  }
}
