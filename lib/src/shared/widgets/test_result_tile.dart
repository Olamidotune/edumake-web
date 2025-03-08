import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestResultTitle extends StatelessWidget {
  const TestResultTitle({
    required this.title,
    required this.date,
    required this.editIcon,
    this.grade,
    super.key,
  });

  final String title;
  final String date;
  final double? grade;
  final bool editIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.fontSize,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                  ),
                ),
                if (editIcon)
                  SvgPicture.asset(
                    'assets/svg/edit.svg',
                    height: 18.fontSize,
                  )
                else
                  const SizedBox.shrink()
              ],
            ),
            AppSpacing.verticalSpaceMedium,
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: 'Date Written: ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor,
                    ),
                children: [
                  TextSpan(
                    text: date,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                        ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: grade != null ? 'Grade: ' : '',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor,
                    ),
                children: [
                  TextSpan(
                    text: '$grade',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 12.fontSize,
                        fontWeight: FontWeight.w400,
                        color: grade != null
                            ? (grade ?? 0) >= 50
                                ? AppColors.greenColor
                                : AppColors.redColor
                            : Colors.transparent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
