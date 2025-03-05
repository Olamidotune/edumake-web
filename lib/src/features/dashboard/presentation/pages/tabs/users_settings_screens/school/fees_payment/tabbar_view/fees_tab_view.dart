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

        if (state.fetchFeesResponseDatum?.isEmpty ?? true) {
          return const Center(
            child: NoDataAvailable(message: 'No fees presently.', height: 3),
          );
        }

        return ListView.separated(
          controller: ScrollController(), //,
          itemCount: state.fetchFeesResponseDatum?.first.students?.length ?? 0,
          itemBuilder: (context, index) {
            final details = state.fetchFeesResponseDatum?.first;
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
                    'paidBy': details?.students?[index].studentId
                        ?.guardians?[index].relationship,
                    'paidFor': details?.students?[index].studentId?.name,
                    'class': details?.students?[index].studentId?.studentClass
                        ?.feesResponseClass?.slug,
                    'feesBreakdown': details?.feesBreakdown
                            ?.map((fb) =>
                                {'title': fb.title, 'amount': fb.amount})
                            .toList() ??
                        [], // Convert `feesBreakdown` to a list of maps
                  },
                );
              },
              title: details?.title ?? '',
              term: details?.classes
                      ?.map((c) => c.name)
                      .where((name) => true)
                      .join(' and ') ??
                  '',
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
