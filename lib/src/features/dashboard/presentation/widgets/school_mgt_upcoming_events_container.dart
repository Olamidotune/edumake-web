
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';

class SchoolMgtUpcomingEventsContainer extends StatelessWidget {
  const SchoolMgtUpcomingEventsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'State Spelling Bee for JSS1',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'HelveticaNeueRounded',
                    ),
              ),
              Text(
                '13, Feb 2023',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'HelveticaNeueRounded',
                    ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          Text(
            'The State Spelling Bee for JSS1 (Junior Secondary School 1) is a competitive academic event designed to enhance vocabulary, spelling skills, and confidence among young students and parents',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 13.fontSize,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w300,
                ),
          ),
          AppSpacing.verticalSpaceMedium,
          Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
              text: TextSpan(
                text: AppStrings.recipients,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeueRounded',
                    ),
                children: [
                  TextSpan(
                    text: ': Parents, Teachers, Students',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'HelveticaNeueRounded',
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
