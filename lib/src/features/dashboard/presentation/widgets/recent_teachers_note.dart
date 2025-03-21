import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentTeachersNote extends StatelessWidget {
  const RecentTeachersNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = ScreenUtil().screenWidth > kMedDesktopWidth;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.greyColor.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Today',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: isDesktop ? 18 : 12.fontSize,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                  children: [
                    TextSpan(
                      text: ' 4:20',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: isDesktop ? 15 : 12.fontSize,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                          ),
                    ),
                  ],
                ),
              ),
              Text(
                'Anna Doe',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: isDesktop ? 15 : 12.fontSize,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceSmall,
          Text(
            'I wanted to bring to your attention that Maryann has been consistently falling asleep during class. This is affecting their participation and ability to keep up ...',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: isDesktop ? 12 : 13.fontSize,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w300,
                ),
          ),
          AppSpacing.verticalSpaceMedium,
          Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
              text: TextSpan(
                text: 'Mrs Deborah Ani',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: isDesktop ? 15 : 12.fontSize,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeueRounded',
                    ),
                children: [
                  TextSpan(
                    text: ' (Social Studies)',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: isDesktop ? 12 : 12.fontSize,
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
