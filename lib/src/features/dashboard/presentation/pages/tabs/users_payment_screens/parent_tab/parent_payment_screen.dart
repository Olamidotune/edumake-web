import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/parent_tab/fees_datails.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:edumake_frontend/src/shared/widgets/payment_payment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';

class ParentPaymentScreen extends StatelessWidget {
  const ParentPaymentScreen({super.key});

  static const String routeName = 'parent_payment_screen';

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
    return RefreshIndicator(
      backgroundColor: AppColors.secondaryColor,
      color: AppColors.whiteColor,
      key: refreshIndicatorKey,
      onRefresh: () async {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  AppStrings.payments,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 24.fontSize,
                        color: AppColors.primaryColor,
                      ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Center(
                      child: Text(
                        AppStrings.paymentHistory,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.fontSize,
                              color: AppColors.primaryColor,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          CustomSearchBar(
            textEditingController: controller,
            isActive: false,
            isHomePage: false,
            hintText: AppStrings.searchPayment,
            onSearch: () {},
          ),
          AppSpacing.verticalSpaceMedium,
          Text(
            AppStrings.pendingPayments,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.fontSize,
                  color: AppColors.primaryColor,
                ),
          ),
          AppSpacing.verticalSpaceSmall,
          BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
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
                return const Center(
                    child: NoDataAvailable(
                  message: 'Something went wrong.',
                  height: 3,
                ));
              }
              if (state.fetchFeesResponseDatum?.isEmpty ?? true) {
                return const Center(child: Text('No fees found'));
              }
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.fetchFeesResponseDatum?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final feeData = state.fetchFeesResponseDatum?[index];
                  return GestureDetector(
                    onTap: () {},
                    child: ParentPaymentCard(
                      wardName: feeData?.students?[index].studentId?.name ??
                          '', // Replace with correct field
                      wardSchool: feeData?.title ?? '',
                      wardClass: 'Class',
                      amount: feeData?.totalAmount ??
                          0, // Assuming this is the correct field
                      onPayFee: () {
                        context.read<FeesPaymentBloc>().add(
                            FeesPaymentEvent.fetchFeesById(feeData?.id ?? ''));
                        Navigator.of(context, rootNavigator: true).pushNamed(
                            IndividualStudentFeesDetailsScreen.routeName);
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return AppSpacing.verticalSpaceMedium;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
