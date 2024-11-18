
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';

class TeachersNote extends StatelessWidget {
  const TeachersNote({
    required this.description,
    required this.date,
    required this.teacher,
    required this.subject,
    required this.wardName,
    super.key,
    this.color,
  });

  final String description;
  final String date;
  final Color? color;
  final String teacher;
  final String wardName;
  final String subject;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
      height: MediaQuery.of(context).size.height < kMinSupportedHeight
          ? 150.height
          : 100.height,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withOpacity(0.4),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(1, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                wardName,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.purpleTextColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12.fontSize,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w300,
                ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          AppSpacing.verticalSpaceSmall,
          Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
              text: TextSpan(
                text: teacher,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                children: [
                  TextSpan(
                    text: ' ($subject)',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w300,
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
