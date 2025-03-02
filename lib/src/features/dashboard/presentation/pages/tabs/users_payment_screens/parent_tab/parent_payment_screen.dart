import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/parent_tab/fees_datails.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
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
                  message: '',
                  height: 3,
                ));
              }
              if (state.datum.isEmpty) {
                return const Center(child: Text('No fees found'));
              }
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.datum.length,
                itemBuilder: (BuildContext context, int index) {
                  final feeData = state.datum[index];
                  return GestureDetector(
                    onTap: () {},
                    child: ParentPaymentCard(
                      wardName:
                          feeData.students[0].id, // Replace with correct field
                      wardSchool: feeData.title,
                      wardClass: 'Class',
                      amount: feeData
                          .totalAmount, // Assuming this is the correct field
                      onPayFee: () {
                        context
                            .read<FeesPaymentBloc>()
                            .add(FeesPaymentEvent.fetchFeesById(feeData.id));
                        Navigator.of(context, rootNavigator: true)
                            .pushNamed(ParentFeesDetailsScreen.routeName);
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

class ParentPaymentCard extends StatelessWidget {
  const ParentPaymentCard({
    required this.wardName,
    required this.wardSchool,
    required this.wardClass,
    required this.amount,
    required this.onPayFee,
    super.key,
  });
  final String wardName;
  final String wardSchool;
  final String wardClass;
  final int amount;
  final void Function() onPayFee;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.greyColor,
            child: Text(
              'HH',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryTextColor,
                  ),
            ),
          ),
          title: Text(
            wardName,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.fontSize,
                ),
          ),
          subtitle: Text(
            wardSchool,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.fontSize,
                  color: AppColors.greyColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceSmall,
        InkWell(
          splashColor: AppColors.whiteColor,
          onTap: onPayFee,
          child: Container(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.1),
              border: Border.all(
                color: AppColors.greyColor.withOpacity(.1),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.schoolFeePayment,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.fontSize,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                const Divider(
                  color: AppColors.greyColor,
                ),
                AppSpacing.verticalSpaceSmall,
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/grad_cap.svg',
                            color: AppColors.primaryColor,
                          ),
                          AppSpacing.horizontalSpaceSmall,
                          Text(
                            AppStrings.school,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10.fontSize,
                                      color: AppColors.greyColor,
                                    ),
                          ),
                        ],
                      ),
                      AppSpacing.horizontalSpaceMassive,
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/star.svg',
                            color: AppColors.primaryColor,
                          ),
                          AppSpacing.horizontalSpaceSmall,
                          Text(
                            AppStrings.classLevel,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10.fontSize,
                                      color: AppColors.greyColor,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 200.width),
                        child: Text(
                          wardSchool,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.fontSize,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                      ),
                      Text(
                        wardClass,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.fontSize,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.verticalSpaceSmall,
                const Divider(
                  color: AppColors.greyColor,
                ),
                AppSpacing.verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$amount',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.fontSize,
                            color: AppColors.redColor,
                          ),
                    ),
                    GestureDetector(
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
                        child: Text(
                          AppStrings.payFee,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.fontSize,
                                    color: AppColors.primaryColor,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
