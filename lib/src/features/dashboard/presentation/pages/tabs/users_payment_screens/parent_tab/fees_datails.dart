import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class ParentFeesDetailsScreen extends StatelessWidget {
  const ParentFeesDetailsScreen({super.key});

  static const String routeName = 'parent_fees_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
        builder: (context, state) {
          final feeData = state.feesIdResponse!.data;
          final breakdown = feeData.feesBreakdown;
          final students = feeData.students;

          final unpaidCount =
              students.where((s) => s.paymentStatus == 'unpaid').length;

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
              message: '',
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
                          unpaidCount > 0 ? 'Unpaid' : 'Paid',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.blackColor,
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Text(
                    'Fees Breakdown',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 16.fontSize,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: breakdown.length,
                    itemBuilder: (context, index) {
                      final item = breakdown[index];
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          item.title,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.blackColor,
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        trailing: Text(
                          'N ${item.amount}',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.blackColor,
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      );
                    },
                    separatorBuilder: (_, __) => AppSpacing.verticalSpaceMedium,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: 14.fontSize,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        ' N ${feeData.totalAmount}',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: 14.fontSize,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
