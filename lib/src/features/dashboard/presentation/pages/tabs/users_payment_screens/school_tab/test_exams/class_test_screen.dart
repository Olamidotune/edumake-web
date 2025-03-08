import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/test/test_bloc.dart';
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

class ClassTestScreen extends StatefulWidget {
  const ClassTestScreen({super.key});

  static const String routeName = '/class_test_screen';

  @override
  State<ClassTestScreen> createState() => _ClassTestScreenState();
}

class _ClassTestScreenState extends State<ClassTestScreen> {
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final searchController = TextEditingController();

    final refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final classId = args['classId'];
    final className = args['className'];
    final schoolName = args['schoolName'];

    return Scaffold(
      appBar: CustomAppBar(
        title: className.toString(),
        subtitle: schoolName.toString(),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          backgroundColor: AppColors.secondaryColor,
          color: AppColors.whiteColor,
          onRefresh: () async {
            context.read<TestBloc>().add(
                  TestEvent.fetchTestResults('', classId.toString(), '', null),
                );
          },
          key: refreshIndicatorKey,
          child: CustomRawScroller(
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
                            // Navigator.of(context).pushNamed(
                            //   AddTestResultsScreen.routeName,
                            // );
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

                        if (state.fetchTestResultsStatus ==
                            FormzSubmissionStatus.failure) {
                          return const NoDataAvailable(
                            message: 'Something went wrong',
                            height: 7,
                          );
                        }

                        if (state.fetchTestResultsData?.length == 0) {
                          return const NoDataAvailable(
                            message: 'No tests available for this subject',
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
                              itemCount:
                                  state.fetchTestResultsData?.length ?? 0,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final testResults =
                                    state.fetchTestResultsData?[index];
                                return GestureDetector(
                                  child: TestResultTitle(
                                    editIcon: true,
                                    date: formatLocalTime(
                                      testResults?.dateWritten ?? '',
                                    ),
                                    title: testResults?.title ?? '',
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return AppSpacing.verticalSpaceMedium;
                              },
                            ),
                            AppSpacing.verticalSpaceMedium,
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
      ),
    );
  }
}
