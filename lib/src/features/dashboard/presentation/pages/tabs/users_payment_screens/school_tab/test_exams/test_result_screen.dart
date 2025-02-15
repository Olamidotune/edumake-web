import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestResultsScreen extends StatelessWidget {
  const TestResultsScreen({Key? key}) : super(key: key);

  static const String routeName = 'test_result';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final searchController = TextEditingController();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.test,
                      style: TextStyle(
                        fontSize: 24.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
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
                    ),
                  ],
                ),
                AppSpacing.verticalSpaceMedium,
                CustomSearchBar(
                    isHomePage: false,
                    isActive: false,
                    textEditingController: searchController),
                const SizedBox(height: 24),
                const Text(
                  'New',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                _buildTestItem(
                  'Second Continuous Term Assessment',
                  '13th Feb, 2024',
                  '100%',
                ),
                _buildTestItem(
                  'First Continuous Term Assessment',
                  '13th Feb, 2024',
                  '100%',
                ),

                const SizedBox(height: 24),

                // Previous Section
                const Text(
                  'Previous',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                _buildTestItem(
                  'Second Continuous Term Assessment',
                  '13th Feb, 2024',
                  '100%',
                ),
                _buildTestItem(
                  'First Continuous Term Assessment',
                  '13th Feb, 2024',
                  '100%',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTestItem(String title, String date, String grade) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Date written: $date',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'Grade: $grade',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.edit, color: Colors.grey[400], size: 20),
            ],
          ),
        ],
      ),
    );
  }
}
