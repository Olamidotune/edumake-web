import 'package:edumake_frontend/src/core/constants/app_colors.dart'
    show AppColors;
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/utils/validator.dart';
import 'package:flutter/material.dart';

class FeesBigContainer extends StatelessWidget {
  const FeesBigContainer({
    required this.title,
    required this.payer,
    required this.amount,
    required this.studentClass,
    required this.paidBy,
    required this.paidFor,
    super.key,
    this.onTap,
  });
  final String title;
  final String payer;
  final int amount;
  final String studentClass;
  final String paidBy;
  final String paidFor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.whiteColor,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withValues(alpha: .05),
          border: Border.all(
            color: AppColors.primaryColor.withValues(alpha: .05),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const Divider(
                color: AppColors.greyColor,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: AppColors.primaryColor,
                          size: 14.fontSize,
                        ),
                        Text(
                          'Recipient/Payer',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 12.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          payer,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 12.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                          maxLines: 2,
                        ),
                        Text(
                          '${AppStrings.naira} ${numberFormat.format(amount)}',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 16.fontSize,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpaceTiny,
                  ],
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: AppColors.primaryColor,
                          size: 14.fontSize,
                        ),
                        Text(
                          'Paid by',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 12.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          paidBy,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 12.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                          maxLines: 2,
                        ),
                        Text(
                          '$paidFor ($studentClass)',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 12.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpaceTiny,
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
