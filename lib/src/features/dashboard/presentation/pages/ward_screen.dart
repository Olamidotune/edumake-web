import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class WardScreen extends StatefulWidget {
  const WardScreen({super.key});

  static const String routeName = 'ward_Screen';

  @override
  _WardScreenState createState() => _WardScreenState();
}

class _WardScreenState extends State<WardScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: const CustomAppBar(
        title: '',
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${l10n.yourWards} (3)',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              AppSpacing.verticalSpaceMedium,
              Container(
                padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
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
                        const CircleAvatar(
                          child: Text('A'),
                        ),
                        AppSpacing.horizontalSpaceMedium,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adeleke David',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 16.fontSize,
                                      color: AppColors.secondaryTexColor,
                                      fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Male',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 14.fontSize,
                                      color: AppColors.primaryTextColor,
                                      fontWeight: FontWeight.w400),
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
                                      l10n.school,
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
                                  'International School, Lagos',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
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
                                    Icons.star_border,
                                    color: AppColors.primaryColor,
                                  ),
                                  Text(
                                    l10n.classLevel,
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
                              Text(
                                'JSS 2',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
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
                                      l10n.nextEvent,
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
                                  'School Sport Festival (13th Feb)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
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
                                    l10n.attendance,
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
                              Text(
                                '100%',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
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
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.horizontalSpacing),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'N 120,000',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 16.fontSize,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            Text(
                              l10n.feesPaid,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
