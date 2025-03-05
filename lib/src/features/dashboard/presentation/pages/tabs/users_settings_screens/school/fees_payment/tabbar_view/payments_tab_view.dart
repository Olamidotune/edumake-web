import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:edumake_frontend/src/shared/widgets/payments_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class PaymentsTabView extends StatelessWidget {
  const PaymentsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
      builder: (context, state) {
        if (state.fetchPaymentStatus == FormzSubmissionStatus.inProgress) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.fetchPaymentStatus == FormzSubmissionStatus.failure) {
          return const Center(
            child: NoDataAvailable(message: 'Something went wrong', height: 3),
          );
        }

        if (state.fetchPaymentsDatum?.isEmpty ?? true) {
          return const Center(
              child: NoDataAvailable(
                  message: 'No payments presently.', height: 3));
        }
        return ListView.separated(
          shrinkWrap: true,
          controller: ScrollController(), //
          itemCount: state.fetchPaymentsDatum!.length,
          itemBuilder: (context, index) {
            final payments = state.fetchPaymentsDatum![index];
            return PaymentContainer(
              onTap: () {},
              title: payments.fee.title,
              amount: payments.amount,
              paidBy: payments.paidBy.fullName ?? '',
              paidFor: payments.paidFor.name,
              date: '',
            );
          },
          separatorBuilder: (context, index) {
            return AppSpacing.verticalSpaceMedium;
          },
        );
      },
    );
  }
}
