import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_details_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/fees_container.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class FeesTabView extends StatelessWidget {
  const FeesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
      builder: (context, state) {
        if (state.fetchFeesPaymentStatus == FormzSubmissionStatus.inProgress) {
          return const Center(
            child: SpinKitPulsingGrid(
              color: AppColors.primaryColor,
              size: 30,
            ),
          );
        }

        if (state.errorMessage != null) {
          return Center(
            child:
                NoDataAvailable(message: state.errorMessage ?? '', height: 3),
          );
        }

        // Explicitly filter students with 'unpaid' status from the original students list
        final unpaidStudents = state.fetchFeesResponseDatum?.first.students
                ?.where(
                    (studentEntry) => studentEntry.paymentStatus == 'unpaid')
                .toList() ??
            [];

        if (unpaidStudents.isEmpty) {
          return const Center(
            child: NoDataAvailable(message: 'No unpaid fees.', height: 3),
          );
        }

        return ListView.separated(
          controller: ScrollController(),
          itemCount: unpaidStudents.length,
          itemBuilder: (context, index) {
            final details = state.fetchFeesResponseDatum?.first;
            final currentStudentEntry = unpaidStudents[index];
            final currentStudent = currentStudentEntry.studentId;

            return FeesContainer(
              onTap: () {
                Navigator.of(context).pushNamed(
                  FeesDetailsScreen.routeName,
                  arguments: {
                    'title': details?.title,
                    'payer': details?.classes
                            ?.map((c) => c.name)
                            .where((name) => true)
                            .join(' and ') ??
                        '',
                    'amount': details?.totalAmount,
                    'paidBy': currentStudent?.guardians?[0].relationship,
                    'paidFor': currentStudent?.name,
                    'class':
                        currentStudent?.studentClass?.feesResponseClass?.slug,
                    'feesBreakdown': details?.feesBreakdown
                            ?.map((fb) =>
                                {'title': fb.title, 'amount': fb.amount})
                            .toList() ??
                        [],
                    'studentId': currentStudent?.id,
                    'feesId': details?.id,
                  },
                );
              },
              title: details?.title ?? '',
              term: currentStudent?.name ?? '',
              amount: details?.totalAmount ?? 0,
              student: false,
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
