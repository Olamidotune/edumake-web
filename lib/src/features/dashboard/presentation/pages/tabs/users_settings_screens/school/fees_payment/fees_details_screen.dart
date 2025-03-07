import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/utils/validator.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_issue_screen.dart';
import 'package:edumake_frontend/src/shared/dialogs/success_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/fees_big_container.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
    final paidBy = args['paidBy'];
    final paidFor = args['paidFor'];
    final studentClass = args['class'];

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
                        if (state.fetchFeesByIdStatus ==
                            FormzSubmissionStatus.inProgress) {
                          return const Center(
                            child: SpinKitPulsingGrid(
                              color: AppColors.primaryColor,
                              size: 30,
                            ),
                          );
                        }
                        if (state.fetchFeesByIdStatus ==
                            FormzSubmissionStatus.failure) {
                          return const Center(
                              child: NoDataAvailable(
                            message: 'No Data Available',
                            height: 3,
                          ));
                        }
                        final fee = state
                            .fetchFeesByIdResponseDatum?.feesBreakdown?.first;
                        final details = state.fetchFeesByIdResponseDatum;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FeesBigContainer(
                                title: fee?.title ?? '',
                                amount: details?.totalAmount ?? 0,
                                payer:
                                    details?.students?.first.studentId?.name ??
                                        '',
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
                              busy: state.markFeesPaymentStatus ==
                                  FormzSubmissionStatus.inProgress,
                              text: 'Mark as paid',
                              onPressed: () {
                                context.read<FeesPaymentBloc>().add(
                                    FeesPaymentEvent.markFeesPayment(
                                        state.fetchFeesByIdResponseDatum?.id ??
                                            '',
                                        state.fetchFeesByIdResponseDatum
                                                ?.students?.first.id ??
                                            '',
                                        'paid'));
                              },
                            ),
                            AppSpacing.verticalSpaceLarge,
                            Button(
                              buttonColor: AppColors.whiteColor,
                              text: 'Enter Issue',
                              onPressed: () {
                                Navigator.of(context).popAndPushNamed(
                                    FeesIssueScreen.routeName,
                                    arguments: {
                                      'title': title,
                                      'amount': state.fetchFeesByIdResponseDatum
                                              ?.totalAmount ??
                                          0,
                                      'payer': payer,
                                      'studentClass': studentClass,
                                      'paidBy': paidBy,
                                      'paidFor': paidFor,
                                      'feesId': state
                                              .fetchFeesByIdResponseDatum?.id ??
                                          '',
                                      'studentId': state
                                              .fetchFeesByIdResponseDatum
                                              ?.students
                                              ?.first
                                              .id ??
                                          ''
                                    });
                              },
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
