import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_kyc/school_kyc_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/widgets/school_drop_down_form.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/subscripton.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SchoolBasicInfoScreen extends HookWidget {
  const SchoolBasicInfoScreen({
    super.key,
  });

  static const String routeName = 'school-basic-info';

  @override
  Widget build(BuildContext context) {
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final schoolNameController = useTextEditingController();
    final schoolAddressController = useTextEditingController();
    final schoolPhoneNumberEmailAddressController = useTextEditingController();
    final scrollController = useScrollController();

    final firstNameFocusNode = useFocusNode();
    final lastNameFocusNode = useFocusNode();
    final phoneNumberFocusNode = useFocusNode();
    final schoolNameFocusNode = useFocusNode();
    final schoolAddressNameFocusNode = useFocusNode();
    final schoolPhoneNumberNameFocusNode = useFocusNode();

    final formKey = useMemoized(GlobalKey<FormState>.new);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: RawScrollbar(
        controller: scrollController,
        thumbColor: AppColors.primaryColor.withOpacity(0.4),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: BlocBuilder<SchoolKycBloc, SchoolKycState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(
                AppSpacing.horizontalSpacing,
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.onMoreStep,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 32.fontSize,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Text(
                      AppStrings.weNeedToKnowSomeBasicInfoAboutYou,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 12.fontSize,
                            fontWeight: FontWeight.w300,
                          ),
                      textAlign: TextAlign.justify,
                    ),
                    AppSpacing.verticalSpaceLarge,
                    Text(
                      AppStrings.schoolHandlerAdmin,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14.fontSize,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    const Divider(
                      color: AppColors.greyColor,
                      thickness: 1,
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            title: AppStrings.firstName,
                            prefixIcon: 'profile',
                            controller: firstNameController,
                            hintText: AppStrings.enterYourFirstName,
                            keyboardType: TextInputType.name,
                            focusNode: firstNameFocusNode,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              // context.read<KycBloc>().add(
                              //       KycEvent.firstNameChanged(value),
                              //     );
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.fieldIsRequired;
                              }
                              return null;
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,
                          CustomTextFormField(
                            title: AppStrings.lastName,
                            prefixIcon: 'profile',
                            controller: lastNameController,
                            hintText: AppStrings.enterYourLastName,
                            keyboardType: TextInputType.name,
                            focusNode: lastNameFocusNode,
                            textInputAction: TextInputAction.next,
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return AppStrings.fieldIsRequired;
                              }
                              return null;
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,
                          CustomTextFormField(
                            title: AppStrings.phoneNumber,
                            prefixIcon: 'phone',
                            controller: phoneNumberController,
                            hintText: AppStrings.enterYourPhoneNumber,
                            keyboardType: TextInputType.phone,
                            focusNode: phoneNumberFocusNode,
                            textInputAction: TextInputAction.next,
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return AppStrings.fieldIsRequired;
                              }
                              return null;
                            },
                          ),
                          AppSpacing.verticalSpaceLarge,
                          Text(
                            AppStrings.schoolHandlerAdmin,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 14.fontSize,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          const Divider(
                            color: AppColors.greyColor,
                            thickness: 1,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          CustomTextFormField(
                            title: AppStrings.nameOfSchool,
                            controller: schoolNameController,
                            hintText: AppStrings.enterSchoolName,
                            keyboardType: TextInputType.name,
                            focusNode: schoolNameFocusNode,
                            textInputAction: TextInputAction.next,
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return AppStrings.fieldIsRequired;
                              }
                              return null;
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,
                          CustomTextFormField(
                            title: AppStrings.schoolAddress,
                            controller: schoolAddressController,
                            hintText: AppStrings.enterSchoolAddress,
                            keyboardType: TextInputType.streetAddress,
                            focusNode: schoolAddressNameFocusNode,
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return AppStrings.fieldIsRequired;
                              }
                              return null;
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,
                          CustomTextFormField(
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return AppStrings.fieldIsRequired;
                              }
                              return null;
                            },
                            title: AppStrings.schoolEmailAddress,
                            controller: schoolPhoneNumberEmailAddressController,
                            hintText: AppStrings.enterSchoolEmailAddress,
                            keyboardType: TextInputType.emailAddress,
                            focusNode: schoolPhoneNumberNameFocusNode,
                            textInputAction: TextInputAction.go,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Text(
                            AppStrings.schoolType,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: AppColors.primaryTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.fontSize,
                                    ),
                          ),
                          AppSpacing.verticalSpaceSmall,
                          const SchoolDropDownFormWidget(
                            hintText: AppStrings.selectSchoolType,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Text(
                            '${AppStrings.numberOfClasses} (${AppStrings.range})',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: AppColors.primaryTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.fontSize,
                                    ),
                          ),
                          AppSpacing.verticalSpaceSmall,
                          const SchoolDropDownFormWidget(
                            hintText: AppStrings.selectNumberOfClasses,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Text(
                            '${AppStrings.numberOfStudents} (${AppStrings.range})',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: AppColors.primaryTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.fontSize,
                                    ),
                          ),
                          AppSpacing.verticalSpaceSmall,
                          const SchoolDropDownFormWidget(
                            hintText: AppStrings.selectNumberOfStudents,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Text(
                            '${AppStrings.numberOfTeachers} (${AppStrings.range})',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: AppColors.primaryTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.fontSize,
                                    ),
                          ),
                          AppSpacing.verticalSpaceSmall,
                          const SchoolDropDownFormWidget(
                            hintText: AppStrings.selectNumberOfTeachers,
                          ),
                          AppSpacing.verticalSpaceHuge,
                          Button(
                            text: AppStrings.submit,
                            onPressed: () {
                              // if (formKey.currentState!.validate()) {
                              //   Navigator.of(context)
                              //       .popAndPushNamed(Dashboard.routeName);
                              // }
                              Navigator.of(context).pushNamed(
                                  SchoolSubscriptionScreen.routeName);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
