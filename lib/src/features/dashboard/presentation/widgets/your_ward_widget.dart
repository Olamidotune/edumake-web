import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/auto_scrolling_text.dart';
import 'package:flutter/material.dart';

class YourWardCard extends StatelessWidget {
  const YourWardCard({
    required this.profilePic,
    required this.wardName,
    required this.schoolName,
    required this.wardClass,
    this.assignmentNum,
    this.feesPaid = false,
    this.scores,
    super.key,
  });
  final String profilePic;
  final String wardName;
  final String schoolName;
  final String wardClass;
  final String? assignmentNum;

  final String? scores;
  final bool feesPaid;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(1, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.greyColor,
                child: Text(
                  wardName[0],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'HelveticaNeueRounded',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryTextColor,
                      ),
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wardName,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  Text(
                    '${schoolName.trim()} ($wardClass)',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: AppColors.greyColor,
                        ),
                        maxLines: 2,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${assignmentNum!.contains('null') ? "No new" : '$assignmentNum'} New Assignments',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryColor,
                            fontSize: 8.fontSize,
                          ),
                      softWrap: false,
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Text(
                      feesPaid ? 'Fees Paid' : 'Fees not paid',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 8.fontSize,
                            color: feesPaid
                                ? AppColors.greenColor
                                : AppColors.errorColor,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSpacing.horizontalSpaceMedium,
              Text(
                'Last Assignment scores: ',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
              ),
              Expanded(
                child: AutoScrollingText(
                  text:
                      'Maths: $scores%, English: $scores%, Physics: 60%, Chemistry: 50%, Biology: 40%, Geography: 30%, History: 20%, CRK: 10%',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.greenColor,
                      ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
