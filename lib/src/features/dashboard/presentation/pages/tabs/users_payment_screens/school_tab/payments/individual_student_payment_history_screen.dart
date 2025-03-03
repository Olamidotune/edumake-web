import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_payment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class IndividualStudentPaymentHistoryScreen extends StatelessWidget {
  const IndividualStudentPaymentHistoryScreen({super.key});

  static const String routeName = 'individual_student_payment_screen';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentName = args['studentName'];

    final scrollController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(
              AppSpacing.horizontalSpacing,
            ),
            child: BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
              builder: (context, state) {
                if (state.fetchPaymentHistoryForStudentStatus ==
                    FormzSubmissionStatus.inProgress) {
                  return const Center(
                    child: SpinKitPulsingGrid(
                      color: AppColors.primaryColor,
                    ),
                  );
                }
                if (state.fetchPaymentHistoryForStudentStatus ==
                    FormzSubmissionStatus.failure) {
                  return const NoDataAvailable(
                    message: 'Something went wrong',
                    height: 5,
                  );
                }
                if (state.individualStudentPaymentHistoryResponseDatum
                        ?.isEmpty ??
                    true) {
                  return NoDataAvailable(
                    message:
                        '$studentName does not have payment history at the moment',
                    height: 5,
                  );
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.paymentFees,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryColor,
                          ),
                    ),
                    AppSpacing.verticalSpaceTiny,
                    Text(
                      'Manage the fees and payment history of the students.',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                    AppSpacing.verticalSpaceMedium,
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state
                          .individualStudentPaymentHistoryResponseDatum!.length,
                      itemBuilder: (context, index) {
                        final feesPayments =
                            state.individualStudentPaymentHistoryResponseDatum![
                                index];
                        return PaymentContainer(
                          title: feesPayments.fee.details,
                          amount: feesPayments.fee.totalAmount,
                          paidBy: feesPayments.paidBy.toString(),
                          paidFor: feesPayments.paidFor,
                          date: formatLocalTime(feesPayments.createdAt),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return AppSpacing.verticalSpaceMedium;
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
