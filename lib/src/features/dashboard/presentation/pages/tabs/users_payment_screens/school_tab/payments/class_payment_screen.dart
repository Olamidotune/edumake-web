import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_details_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/fees_container.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class ClassPaymentScreen extends StatelessWidget {
  const ClassPaymentScreen({super.key});

  static const String routeName = 'class_payment_screen';

  @override
  Widget build(BuildContext context) {
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
                if (state.fetchFeesPaymentStatus ==
                    FormzSubmissionStatus.inProgress) {
                  return const Center(
                    child: SpinKitPulsingGrid(
                      color: AppColors.primaryColor,
                      size: 30,
                    ),
                  );
                }

                if (state.fetchFeesPaymentStatus ==
                    FormzSubmissionStatus.failure) {
                  return Center(
                    child: NoDataAvailable(
                        message: state.errorMessage ?? '', height: 3),
                  );
                }

                if (state.paymentStatuses.isEmpty) {
                  return const Center(
                    child:
                        NoDataAvailable(message: 'No unpaid fees.', height: 3),
                  );
                }

                return ListView.separated(
                  shrinkWrap: true,
                  controller: ScrollController(),
                  itemCount: state.unpaidStudents.length,
                  itemBuilder: (context, index) {
                    final currentStudent = state.unpaidStudents[index];

                    // Find the corresponding fee details for this student
                    final details = state.fetchFeesResponseDatum?.firstWhere(
                      (fee) =>
                          fee.students?.any((student) =>
                              student.studentId?.id == currentStudent.id &&
                              student.paymentStatus == 'unpaid') ??
                          false,
                    );

                    if (details == null) {
                      return const SizedBox
                          .shrink(); // Skip if no matching fee found
                    }

                    return FeesContainer(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          FeesDetailsScreen.routeName,
                          arguments: {
                            'title': details.title,
                            'payer': details.classes
                                    ?.map((c) => c.name)
                                    .where((name) => true)
                                    .join(' and ') ??
                                '',
                            'amount': details.totalAmount,
                            'paidBy': currentStudent.guardians?[0].relationship,
                            'paidFor': currentStudent.name,
                            'class': currentStudent.studentClass?.name,
                            'feesBreakdown': details.feesBreakdown
                                    ?.map((fb) => {
                                          'title': fb.title,
                                          'amount': fb.amount
                                        })
                                    .toList() ??
                                [],
                            'studentId': currentStudent.id,
                            'feesId': details.id,
                          },
                        );
                      },
                      title: details.title ?? '',
                      term: currentStudent.name ?? '',
                      amount: details.totalAmount ?? 0,
                      student: false,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return AppSpacing.verticalSpaceMedium;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
