import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WardBigCard extends StatelessWidget {
  const WardBigCard({
    required this.wardName,
    required this.wardClass,
    required this.wardSchool,
    required this.wardNextEvent,
    required this.wardAttendance,
    required this.wardGender,
    required this.feesAmount,
    required this.color,
    super.key,
  });

  final String wardName;
  final String wardClass;
  final String wardSchool;
  final String wardNextEvent;
  final String wardAttendance;
  final String wardGender;
  final String feesAmount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withOpacity(0.2),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Text(wardName[0]),
              ),
              AppSpacing.horizontalSpaceMedium,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wardName,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.fontSize,
                          color: AppColors.secondaryTexColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    wardGender,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.fontSize,
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/grad_cap.svg',
                            height: 15,
                          ),
                          AppSpacing.horizontalSpaceSmall,
                          Text(
                            AppStrings.school,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 13.fontSize,
                                  color: AppColors.primaryTextColor,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        wardSchool,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 12.fontSize,
                              color: AppColors.secondaryTexColor,
                              fontWeight: FontWeight.w800,
                              overflow: TextOverflow.ellipsis,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Icon(
                            Icons.star_border,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        AppSpacing.horizontalSpaceMedium,
                        Expanded(
                          flex: 3,
                          child: Text(
                            AppStrings.classLevel,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 13.fontSize,
                                  color: AppColors.primaryTextColor,
                                  fontWeight: FontWeight.w300,
                                ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      wardClass,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 12.fontSize,
                            color: AppColors.secondaryTexColor,
                            fontWeight: FontWeight.w800,
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/calendar.svg',
                            height: 15,
                          ),
                          AppSpacing.horizontalSpaceSmall,
                          Text(
                            AppStrings.nextEvent,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 13.fontSize,
                                  color: AppColors.primaryTextColor,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        wardNextEvent,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 12.fontSize,
                              color: AppColors.secondaryTexColor,
                              fontWeight: FontWeight.w800,
                              overflow: TextOverflow.ellipsis,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.person_2,
                          color: AppColors.primaryColor,
                        ),
                        Text(
                          AppStrings.attendance,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 13.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ],
                    ),
                    Text(
                      '$wardAttendance %',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 12.fontSize,
                            color: AppColors.secondaryTexColor,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          const Divider(
            color: AppColors.primaryTextColor,
            thickness: 0.5,
          ),
          AppSpacing.verticalSpaceSmall,
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppSpacing.horizontalSpacing),
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'N $feesAmount',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16.fontSize,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  Text(
                    AppStrings.feesPaid,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w400,
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
