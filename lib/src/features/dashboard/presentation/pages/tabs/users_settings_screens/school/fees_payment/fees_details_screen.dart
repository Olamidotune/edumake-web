import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/success_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class FeesDetailsScreen extends StatelessWidget {
  const FeesDetailsScreen({super.key});

  static const String routeName = 'fees_details_screen.dart';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;

    final title = args['title'];
    final payer = args['payer'];
    final amount = args['amount'];
    final paidBy = args['paidBy'];
    final paidFor = args['paidFor'];
    final studentClass = args['class'];
    final studentId = args['studentId'];
    final feesId = args['feesId'];
    final feesBreakdown = List<Map<String, dynamic>>.from(
        (args['feesBreakdown'] as Iterable<dynamic>?) ?? []);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
            scrollController: scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSpacing.verticalSpaceLarge,
                    Text(
                      'Payment Successful!',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryColor,
                          ),
                    ),
                    AppSpacing.verticalSpaceMedium,
                    BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
                      buildWhen: (previous, current) {
                        return _buildWhen(context, previous, current);
                      },
                      builder: (context, state) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FeesBigContainer(
                                title: title.toString(),
                                amount: amount as int,
                                payer: payer.toString(),
                                studentClass: studentClass.toString(),
                                paidBy: paidBy.toString(),
                                paidFor: paidFor.toString()),
                            AppSpacing.verticalSpaceLarge,
                            Text(
                              'Fees Breakdown',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 16.fontSize,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryColor,
                                  ),
                            ),
                            AppSpacing.verticalSpaceMedium,
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: feesBreakdown.length,
                              itemBuilder: (context, index) {
                                final fee = feesBreakdown[index];
                                return ListTile(
                                  title: Text(
                                    fee['title'] as String? ?? 'Unknown Title',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 14.fontSize,
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.primaryTextColor),
                                  ),
                                  trailing: Text(
                                    " ₦${fee['amount'] ?? 0}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontSize: 14.fontSize,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return AppSpacing.verticalSpaceMedium;
                              },
                            ),
                            AppSpacing.verticalSpaceMedium,
                            const Divider(),
                            ListTile(
                              title: Text(
                                'Total',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14.fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor),
                              ),
                              trailing: Text(
                                '₦${state.fetchFeesResponseDatum?.first.totalAmount ?? 0}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14.fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor),
                              ),
                            ),
                            AppSpacing.verticalSpaceMassive,
                            Button(
                              busy: state.markFeesPaymentStatus ==
                                  FormzSubmissionStatus.inProgress,
                              text: 'Mark as paid',
                              onPressed: () {
                                context.read<FeesPaymentBloc>().add(
                                    FeesPaymentEvent.markFeesPayment(
                                        feesId.toString(),
                                        studentId.toString(),
                                        'paid'));
                              },
                            ),
                            AppSpacing.verticalSpaceLarge,
                            Button(
                              busy: state.markFeesPaymentStatus ==
                                  FormzSubmissionStatus.inProgress,
                              buttonColor: AppColors.whiteColor,
                              text: 'Enter Issue',
                              onPressed: () {},
                            )
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  bool _buildWhen(
    BuildContext context,
    FeesPaymentState previous,
    FeesPaymentState current,
  ) {
    if (previous.markFeesPaymentStatus == FormzSubmissionStatus.inProgress &&
        current.markFeesPaymentStatus == FormzSubmissionStatus.success) {
      _showSuccessDialog(context);
      return false;
    } else if (previous.markFeesPaymentStatus ==
            FormzSubmissionStatus.inProgress &&
        current.markFeesPaymentStatus == FormzSubmissionStatus.failure &&
        current.errorMessage != null) {
      ToastService.toast(
        current.errorMessage ?? 'An error occurred',
        ToastType.error,
      );
      context
          .read<FeesPaymentBloc>()
          .add(const FeesPaymentEvent.errorMessage(null));
      return false;
    }
    return true;
  }

  void _showSuccessDialog(BuildContext context) async {
    await showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const SuccessDialog(
          titleText: 'Payment Status Updated Successfully',
          text: 'The associated accounts will be notified accordingly.',
        );
      },
    );
  }
}

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
                          '₦$amount',
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
