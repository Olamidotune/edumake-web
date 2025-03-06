import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/parent_tab/fees_datails.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/fees_container.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class IndividualStudentPaymentScreen extends StatelessWidget {
  const IndividualStudentPaymentScreen({super.key});

  static const String routeName = 'individual_student_payment';
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentName = args['studentName'];
    final className = args['className'];
    final schoolName = args['schoolName'];
    // final classId = args['classId'];
    // final studentId = args['studentId'];
    // final source = args['source'];

    final scrollController = ScrollController();

    return Scaffold(
      appBar: CustomAppBar(
        title: studentName.toString(),
        subtitle: '$schoolName. ($className)',
      ),
      body: SafeArea(
        child: CustomRawScroller(
            scrollController: scrollController,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
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
                            message: state.errorMessage ?? '', height: 50),
                      );
                    }
                    final unpaidStudents = state
                            .fetchFeesResponseDatum?.first.students
                            ?.where((studentEntry) =>
                                studentEntry.paymentStatus == 'unpaid')
                            .toList() ??
                        [];

                    if (unpaidStudents.isEmpty) {
                      return const Center(
                        child: NoDataAvailable(
                            message: 'No unpaid fees.', height: 10),
                      );
                    }

                    return Column(
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: state.paymentStatuses.length,
                          itemBuilder: (context, index) {
                            final details = state.fetchFeesResponseDatum?.first;
                            final currentStudentEntry = unpaidStudents[index];
                            final currentStudent =
                                currentStudentEntry.studentId;

                            return FeesContainer(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  IndividualStudentFeesDetailsScreen.routeName,
                                  arguments: {
                                    'title': details?.title,
                                    'payer': details?.classes
                                            ?.map((c) => c.name)
                                            .where((name) => true)
                                            .join(' and ') ??
                                        '',
                                    'amount': details?.totalAmount,
                                    'paidBy': currentStudent
                                        ?.guardians?[0].relationship,
                                    'paidFor': currentStudent?.name,
                                    'class': currentStudent
                                        ?.studentClass?.feesResponseClass?.slug,
                                    'feesBreakdown': details?.feesBreakdown
                                            ?.map((fb) => {
                                                  'title': fb.title,
                                                  'amount': fb.amount
                                                })
                                            .toList() ??
                                        [],
                                    'studentId': currentStudent?.id,
                                    'feesId': details?.id,
                                    'paymentStatus': currentStudent?.school
                                  },
                                );
                              },
                              title: details?.title ?? '',
                              term: currentStudent?.name ?? '',
                              amount: details?.totalAmount ?? 0,
                              student: false,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return AppSpacing.verticalSpaceMedium;
                          },
                        )
                      ],
                    );
                  },
                ),
              ),
            )),
      ),
    );
  }
}
