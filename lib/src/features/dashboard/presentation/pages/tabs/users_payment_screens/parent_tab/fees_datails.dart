import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/utils/validator.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/success_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class IndividualStudentFeesDetailsScreen extends StatelessWidget {
  const IndividualStudentFeesDetailsScreen({super.key});

  static const String routeName = 'parent_fees_details';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentId = args['studentId'];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
        builder: (context, state) {
          if (state.fetchFeesByIdStatus == FormzSubmissionStatus.inProgress) {
            return const Center(
              child: SpinKitPulsingGrid(
                color: AppColors.primaryColor,
                size: 30,
              ),
            );
          }
          if (state.fetchFeesByIdStatus == FormzSubmissionStatus.failure) {
            return const Center(
                child: NoDataAvailable(
              message: 'No Data Available',
              height: 3,
            ));
          }
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.fees,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Container(
                    padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor.withValues(alpha: .1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Status',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.blackColor,
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        Text(
                          state.fetchFeesByIdResponseDatum!.students!.first
                                  .paymentStatus!
                                  .contains('unpaid')
                              ? 'Not Paid'
                              : 'Paid',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: state.fetchFeesByIdResponseDatum!
                                            .students!.first.paymentStatus!
                                            .contains('unpaid')
                                        ? AppColors.redColor
                                        : AppColors.greenColor,
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
                    buildWhen: (previous, current) {
                      return _buildWhen(context, previous, current);
                    },
                    builder: (context, state) {
                      final role = context.read<AuthBloc>().state.user?.role;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            itemCount: state.fetchFeesByIdResponseDatum
                                    ?.feesBreakdown?.length ??
                                0,
                            itemBuilder: (context, index) {
                              final fee = state.fetchFeesByIdResponseDatum
                                  ?.feesBreakdown?[index];
                              return ListTile(
                                title: Text(
                                  fee?.title ?? '',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 14.fontSize,
                                          fontWeight: FontWeight.w300,
                                          color: AppColors.primaryTextColor),
                                ),
                                trailing: Text(
                                  '${AppStrings.naira} ${numberFormat.format(fee?.amount)}',
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
                              '${AppStrings.naira} ${numberFormat.format(state.fetchFeesByIdResponseDatum?.totalAmount ?? 0)}',
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
                            buttonColor: role == 'school-admin'
                                ? Colors.white
                                : AppColors.primaryColor,
                            busy: state.markFeesPaymentStatus ==
                                FormzSubmissionStatus.inProgress,
                            text: role == 'school-admin'
                                ? state.fetchFeesByIdResponseDatum!.students!
                                        .first.paymentStatus!
                                        .contains('unpaid')
                                    ? '   Mark as paid'
                                    : 'Mark as unpaid'
                                : 'Pay Fees',
                            onPressed: () {
                              role == 'school-admin'
                                  ? context
                                      .read<FeesPaymentBloc>()
                                      .add(FeesPaymentEvent.markFeesPayment(
                                        state.fetchFeesByIdResponseDatum?.id ??
                                            '',
                                        studentId.toString(),
                                        state.fetchFeesByIdResponseDatum!
                                                .students!.first.paymentStatus!
                                                .contains('unpaid')
                                            ? 'paid'
                                            : 'unpaid',
                                      ))
                                  : () {};
                            },
                          ),
                          AppSpacing.verticalSpaceLarge,
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
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
