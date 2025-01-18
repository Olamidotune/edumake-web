import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ParentPaymentScreen extends StatelessWidget {
  const ParentPaymentScreen({super.key});

  static const String routeName = 'parent_payment_screen';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                AppStrings.payments,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 24.fontSize,
                      color: AppColors.primaryColor,
                    ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Center(
                    child: Text(
                      AppStrings.paymentHistory,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.fontSize,
                            color: AppColors.primaryColor,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        AppSpacing.verticalSpaceMedium,
        CustomSearchBar(
          isHomePage: false,
          hintText: AppStrings.searchPayment,
          onSearch: () {},
        ),
        AppSpacing.verticalSpaceMedium,
        Text(
          AppStrings.pendingPayments,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16.fontSize,
                color: AppColors.primaryColor,
              ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.greyColor,
            child: Text(
              'HH',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryTextColor,
                  ),
            ),
          ),
          title: Text(
            'Anna Doe',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.fontSize,
                ),
          ),
          subtitle: Text(
            'International School of Lagos, Akoka.',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.fontSize,
                  color: AppColors.greyColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceSmall,
        Container(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            border: Border.all(
              color: AppColors.greyColor.withOpacity(.1),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.schoolFeePayment,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.fontSize,
                      color: AppColors.blackColor,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              const Divider(
                color: AppColors.greyColor,
              ),
              AppSpacing.verticalSpaceSmall,
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/grad_cap.svg',
                          color: AppColors.primaryColor,
                        ),
                        AppSpacing.horizontalSpaceSmall,
                        Text(
                          AppStrings.school,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.fontSize,
                                    color: AppColors.greyColor,
                                  ),
                        ),
                      ],
                    ),
                    AppSpacing.horizontalSpaceMassive,
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/star.svg',
                          color: AppColors.primaryColor,
                        ),
                        AppSpacing.horizontalSpaceSmall,
                        Text(
                          AppStrings.classLevel,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.fontSize,
                                    color: AppColors.greyColor,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 200.width),
                      child: Text(
                        'International School of Lagos, Akoka.',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.fontSize,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                    ),
                    Text(
                      'Jss2',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.fontSize,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpaceSmall,
              const Divider(
                color: AppColors.greyColor,
              ),
              AppSpacing.verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'N 102,000',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.fontSize,
                          color: AppColors.redColor,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        AppStrings.payFee,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.fontSize,
                              color: AppColors.primaryColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Container(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            border: Border.all(
              color: AppColors.greyColor.withOpacity(.1),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.schoolFeePayment,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.fontSize,
                      color: AppColors.blackColor,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              const Divider(
                color: AppColors.greyColor,
              ),
              AppSpacing.verticalSpaceSmall,
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/grad_cap.svg',
                          color: AppColors.primaryColor,
                        ),
                        AppSpacing.horizontalSpaceSmall,
                        Text(
                          AppStrings.school,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.fontSize,
                                    color: AppColors.greyColor,
                                  ),
                        ),
                      ],
                    ),
                    AppSpacing.horizontalSpaceMassive,
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/star.svg',
                          color: AppColors.primaryColor,
                        ),
                        AppSpacing.horizontalSpaceSmall,
                        Text(
                          AppStrings.classLevel,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.fontSize,
                                    color: AppColors.greyColor,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 200.width),
                      child: Text(
                        'International School of Lagos, Akoka.',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.fontSize,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                    ),
                    Text(
                      'Jss2',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.fontSize,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpaceSmall,
              const Divider(
                color: AppColors.greyColor,
              ),
              AppSpacing.verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'N 102,000',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.fontSize,
                          color: AppColors.redColor,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        AppStrings.payFee,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.fontSize,
                              color: AppColors.primaryColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Container(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            border: Border.all(
              color: AppColors.greyColor.withOpacity(.1),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.schoolFeePayment,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.fontSize,
                      color: AppColors.blackColor,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              const Divider(
                color: AppColors.greyColor,
              ),
              AppSpacing.verticalSpaceSmall,
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/grad_cap.svg',
                          color: AppColors.primaryColor,
                        ),
                        AppSpacing.horizontalSpaceSmall,
                        Text(
                          AppStrings.school,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.fontSize,
                                    color: AppColors.greyColor,
                                  ),
                        ),
                      ],
                    ),
                    AppSpacing.horizontalSpaceMassive,
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/star.svg',
                          color: AppColors.primaryColor,
                        ),
                        AppSpacing.horizontalSpaceSmall,
                        Text(
                          AppStrings.classLevel,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.fontSize,
                                    color: AppColors.greyColor,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 200.width),
                      child: Text(
                        'International School of Lagos, Akoka.',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.fontSize,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                    ),
                    Text(
                      'Jss2',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.fontSize,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpaceSmall,
              const Divider(
                color: AppColors.greyColor,
              ),
              AppSpacing.verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'N 102,000',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.fontSize,
                          color: AppColors.redColor,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        AppStrings.payFee,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.fontSize,
                              color: AppColors.primaryColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
