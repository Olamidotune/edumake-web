import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/utils/validator.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeesContainer extends StatelessWidget {
  const FeesContainer({
    required this.title,
    required this.term,
    required this.amount,
    required this.student,
    super.key,
    this.onTap,
  });
  final String title;
  final String term;
  final int amount;
  final bool student;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
      builder: (context, state) {
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
                              student ? ' Class/Level' : ' Recipient/Payer',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 12.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpaceTiny,
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          term,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 15.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                          maxLines: 2,
                        ),
                        Text(
                          '${AppStrings.naira} ${numberFormat.format(amount)}',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 15.fontSize,
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
