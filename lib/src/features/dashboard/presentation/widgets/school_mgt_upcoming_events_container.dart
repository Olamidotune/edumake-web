import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';

class SchoolMgtUpcomingEventsContainer extends StatelessWidget {
  const SchoolMgtUpcomingEventsContainer({
    required this.title,
    required this.date,
    required this.description,
    required this.previousEvents,
    super.key,
    this.recipients,
    this.recipientsList,
  });

  final String title;
  final String date;
  final String description;
  final String? recipients;
  //come back to this
  // final List<String>? recipientsList;
  final String? recipientsList;
  final bool previousEvents;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(0.1),
        ),
        color: previousEvents
            ? AppColors.whiteColor.withOpacity(0.2)
            : AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'HelveticaNeueRounded',
                    ),
              ),
              Text(
                date,
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
            description,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 13.fontSize,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w300,
                ),
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
          ),
          if (recipients != null)
            AppSpacing.verticalSpaceMedium
          else
            const SizedBox.shrink(),
          Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
              text: TextSpan(
                text: recipients ?? '',
                // text: AppStrings.recipients,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeueRounded',
                    ),
                children: [
                  TextSpan(
                    text: recipientsList ?? '',
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
