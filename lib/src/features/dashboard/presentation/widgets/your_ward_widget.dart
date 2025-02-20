import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/auto_scrolling_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class YourWardCard extends StatelessWidget {
  const YourWardCard({
    required this.wardName,
    required this.schoolName,
    required this.wardClass,
    this.assignmentNum,
    this.feesPaid = false,
    this.scores,
    super.key,
  });

  final String wardName;
  final String schoolName;
  final String wardClass;
  final String? assignmentNum;
  final String? scores;
  final bool feesPaid;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.horizontalSpacing,
        vertical: AppSpacing.horizontalSpacingSmall,
      ),
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
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          radius: 18.fontSize,
          backgroundColor: AppColors.primaryColor,
          child: SvgPicture.asset(
            'assets/svg/people.svg',
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              wardName,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryTextColor,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
            AppSpacing.verticalSpaceSmall,
            Text(
              '${schoolName.trim()} ($wardClass)',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: AppColors.greyColor,
                  ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            AppSpacing.verticalSpaceSmall,
            Text(
              'Last Assignment scores: ',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                  ),
            ),
          ],
        ),
        trailing: SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                assignmentNum?.contains('null') ?? true
                    ? 'No new Assignments'
                    : '$assignmentNum New Assignments',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                      fontSize: 8.fontSize,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
              AppSpacing.verticalSpaceTiny,
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
              AppSpacing.verticalSpaceSmall,
              SizedBox(
                height: 12,
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
        ),
      ),
    );
  }
}
