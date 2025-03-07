import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/utils/validator.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer(
      {required this.title,
      required this.amount,
      required this.paidBy,
      required this.paidFor,
      required this.date,
      super.key,
      this.onTap});
  final String title;
  final int amount;
  final String paidBy;
  final String paidFor;
  final String date;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(3),
            padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
                vertical: AppSpacing.verticalValueSmall),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryColor),
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(
                    'assets/svg/tick.svg',
                    height: 20.fontSize,
                  ),
                  title: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 13.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  subtitle: Text(
                    date,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 10.fontSize,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyColor,
                        ),
                  ),
                  trailing: Text(
                    '${AppStrings.naira} ${numberFormat.format(amount)}',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 14.fontSize,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceSmall,
                const Divider(
                  color: AppColors.greyColor,
                ),
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    text: 'paid by ',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 13.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                    children: [
                      TextSpan(
                        text: paidBy,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 13.fontSize,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                      ),
                      TextSpan(
                        text: ', for ',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 13.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                      TextSpan(
                        text: paidFor,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 13.fontSize,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
