import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_kyc/school_kyc_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/widgets/school_drop_down_form.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SchoolBasicInfoDesktopView extends StatelessWidget {
  const SchoolBasicInfoDesktopView({
    required this.scrollController,
    required this.formKey,
    required this.firstNameController,
    required this.firstNameFocusNode,
    required this.lastNameController,
    required this.lastNameFocusNode,
    required this.phoneNumberController,
    required this.phoneNumberFocusNode,
    required this.schoolNameController,
    required this.schoolNameFocusNode,
    required this.schoolAddressController,
    required this.schoolAddressNameFocusNode,
    required this.schoolPhoneNumberEmailAddressController,
    required this.schoolPhoneNumberNameFocusNode,
    required this.state,
    super.key,
  });

  final ScrollController scrollController;
  final GlobalKey<FormState> formKey;
  final TextEditingController firstNameController;
  final FocusNode firstNameFocusNode;
  final TextEditingController lastNameController;
  final FocusNode lastNameFocusNode;
  final TextEditingController phoneNumberController;
  final FocusNode phoneNumberFocusNode;
  final TextEditingController schoolNameController;
  final FocusNode schoolNameFocusNode;
  final TextEditingController schoolAddressController;
  final FocusNode schoolAddressNameFocusNode;
  final TextEditingController schoolPhoneNumberEmailAddressController;
  final FocusNode schoolPhoneNumberNameFocusNode;
  final SchoolKycState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.horizontalSpacing,
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
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            AppSpacing.verticalSpaceMedium,
            Text(
              AppStrings.weNeedToKnowSomeBasicInfoAboutYou,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
              textAlign: TextAlign.justify,
            ),
            AppSpacing.verticalSpaceLarge,
            Text(
              AppStrings.schoolHandlerAdmin,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
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
                  WebCustomTextFormField(
                    title: AppStrings.firstName,
                    prefixIcon: 'profile',
                    controller: firstNameController,
                    hintText: AppStrings.enterYourFirstName,
                    keyboardType: TextInputType.name,
                    focusNode: firstNameFocusNode,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context.read<SchoolKycBloc>().add(
                            SchoolKycEvent.onFirstNameChanged(value),
                          );
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.fieldIsRequired;
                      }
                      return null;
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  WebCustomTextFormField(
                    title: AppStrings.lastName,
                    prefixIcon: 'profile',
                    controller: lastNameController,
                    hintText: AppStrings.enterYourLastName,
                    keyboardType: TextInputType.name,
                    focusNode: lastNameFocusNode,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context.read<SchoolKycBloc>().add(
                            SchoolKycEvent.onLastNameChanged(value),
                          );
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.fieldIsRequired;
                      }
                      return null;
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  WebCustomTextFormField(
                    title: AppStrings.phoneNumber,
                    prefixIcon: 'phone',
                    controller: phoneNumberController,
                    hintText: AppStrings.enterYourPhoneNumber,
                    keyboardType: TextInputType.phone,
                    focusNode: phoneNumberFocusNode,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context.read<SchoolKycBloc>().add(
                            SchoolKycEvent.onPhoneNumberChanged(value),
                          );
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.fieldIsRequired;
                      }
                      return null;
                    },
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Text(
                    AppStrings.schoolHandlerAdmin,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const Divider(
                    color: AppColors.greyColor,
                    thickness: 1,
                  ),
                  AppSpacing.verticalSpaceMedium,
                  WebCustomTextFormField(
                    title: AppStrings.nameOfSchool,
                    controller: schoolNameController,
                    hintText: AppStrings.enterSchoolName,
                    keyboardType: TextInputType.name,
                    focusNode: schoolNameFocusNode,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => context.read<SchoolKycBloc>().add(
                          SchoolKycEvent.onSchoolNameChanged(value),
                        ),
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return AppStrings.fieldIsRequired;
                      }
                      return null;
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  WebCustomTextFormField(
                    title: AppStrings.schoolAddress,
                    controller: schoolAddressController,
                    hintText: AppStrings.enterSchoolAddress,
                    keyboardType: TextInputType.streetAddress,
                    focusNode: schoolAddressNameFocusNode,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => context.read<SchoolKycBloc>().add(
                          SchoolKycEvent.onSchoolAddressChanged(value),
                        ),
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return AppStrings.fieldIsRequired;
                      }
                      return null;
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  WebCustomTextFormField(
                    validator: (value) {
                      if (EmailValidator.validate(
                        value?.trim() ?? '',
                      )) {
                        return null;
                      }
                      return 'Please enter a valid email address';
                    },
                    onChanged: (value) {
                      context.read<SchoolKycBloc>().add(
                            SchoolKycEvent.onSchoolEmailChanged(value),
                          );
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
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  SchoolTypeDropDownFormWidget(
                    hintText: AppStrings.selectSchoolType,
                    onChanged: (schoolType) {
                      context.read<SchoolKycBloc>().add(
                            SchoolKycEvent.onSchoolTypeChanged(
                              schoolType!,
                            ),
                          );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Text(
                    '${AppStrings.numberOfClasses} (${AppStrings.range})',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  SchoolDropDownFormWidget(
                    hintText: AppStrings.selectNumberOfClasses,
                    onChanged: (classNumberRange) {
                      context.read<SchoolKycBloc>().add(
                            SchoolKycEvent.onClassNumberRangeChanged(
                              classNumberRange!,
                            ),
                          );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Text(
                    '${AppStrings.numberOfStudents} (${AppStrings.range})',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  SchoolDropDownFormWidget(
                    hintText: AppStrings.selectNumberOfStudents,
                    onChanged: (studentNumberRange) {
                      context.read<SchoolKycBloc>().add(
                            SchoolKycEvent.onStudentNumberRangeChanged(
                              studentNumberRange!,
                            ),
                          );
                    },
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Text(
                    '${AppStrings.numberOfTeachers} (${AppStrings.range})',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  SchoolDropDownFormWidget(
                    hintText: AppStrings.selectNumberOfTeachers,
                    onChanged: (teacherNumberRange) {
                      context.read<SchoolKycBloc>().add(
                            SchoolKycEvent.onTeacherNumberRangeChanged(
                              teacherNumberRange!,
                            ),
                          );
                    },
                  ),
                  AppSpacing.verticalSpaceHuge,
                  Button(
                    isWeb: true,
                    busy: state.schoolKycStatus ==
                        FormzSubmissionStatus.inProgress,
                    text: AppStrings.submit,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<SchoolKycBloc>().add(
                              const SchoolKycEvent.submitSchoolKyc(),
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
