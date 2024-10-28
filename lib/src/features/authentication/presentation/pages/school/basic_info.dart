import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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

    final firstNameFocusNode = useFocusNode();
    final lastNameFocusNode = useFocusNode();
    final phoneNumberFocusNode = useFocusNode();
    final schoolNameFocusNode = useFocusNode();
    final schoolAddressNameFocusNode = useFocusNode();
    final schoolPhoneNumberNameFocusNode = useFocusNode();

    final formKey = useMemoized(GlobalKey<FormState>.new);

    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(
          AppSpacing.horizontalSpacing,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                l10n.onMoreStep,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceMedium,
              Text(
                l10n.weNeedToKnowSomeBasicInfoAboutYou,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
                textAlign: TextAlign.justify,
              ),
              AppSpacing.verticalSpaceLarge,
              Text(
                l10n.schoolHandlerAdmin,
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
                      title: l10n.firstName,
                      prefixIcon: 'profile',
                      controller: firstNameController,
                      hintText: l10n.enterYourFirstName,
                      keyboardType: TextInputType.name,
                      focusNode: firstNameFocusNode,
                      textInputAction: TextInputAction.next,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return l10n.fieldIsRequired;
                        }
                        return null;
                      },
                    ),
                    AppSpacing.verticalSpaceMedium,
                    CustomTextFormField(
                      title: l10n.lastName,
                      prefixIcon: 'profile',
                      controller: lastNameController,
                      hintText: l10n.enterYourLastName,
                      keyboardType: TextInputType.name,
                      focusNode: lastNameFocusNode,
                      textInputAction: TextInputAction.next,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return l10n.fieldIsRequired;
                        }
                        return null;
                      },
                    ),
                    AppSpacing.verticalSpaceMedium,
                    CustomTextFormField(
                      title: l10n.phoneNumber,
                      prefixIcon: 'phone',
                      controller: phoneNumberController,
                      hintText: l10n.enterYourPhoneNumber,
                      keyboardType: TextInputType.phone,
                      focusNode: phoneNumberFocusNode,
                      textInputAction: TextInputAction.next,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return l10n.fieldIsRequired;
                        }
                        return null;
                      },
                    ),
                    AppSpacing.verticalSpaceLarge,
                    Text(
                      l10n.schoolHandlerAdmin,
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
                    CustomTextFormField(
                      title: l10n.nameOfSchool,
                      controller: schoolNameController,
                      hintText: l10n.enterSchoolName,
                      keyboardType: TextInputType.name,
                      focusNode: schoolNameFocusNode,
                      textInputAction: TextInputAction.next,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return l10n.fieldIsRequired;
                        }
                        return null;
                      },
                    ),
                    AppSpacing.verticalSpaceMedium,
                    CustomTextFormField(
                      title: l10n.schoolAddress,
                      controller: schoolAddressController,
                      hintText: l10n.enterSchoolAddress,
                      keyboardType: TextInputType.streetAddress,
                      focusNode: schoolAddressNameFocusNode,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return l10n.fieldIsRequired;
                        }
                        return null;
                      },
                    ),
                    AppSpacing.verticalSpaceMedium,
                    CustomTextFormField(
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return l10n.fieldIsRequired;
                        }
                        return null;
                      },
                      title: l10n.schoolEmailAddress,
                      controller: schoolPhoneNumberEmailAddressController,
                      hintText: l10n.enterSchoolEmailAddress,
                      keyboardType: TextInputType.emailAddress,
                      focusNode: schoolPhoneNumberNameFocusNode,
                      textInputAction: TextInputAction.go,
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Theme(
                      data: Theme.of(context).copyWith(
                        scrollbarTheme: ScrollbarThemeData(
                          thumbColor:
                              MaterialStateProperty.all(AppColors.primaryColor),
                          thickness: MaterialStateProperty.all(6),
                          radius: const Radius.circular(8),
                          thumbVisibility: MaterialStateProperty.all(
                            true,
                          ),
                        ),
                      ),
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(
                          scrollbars: true,
                          physics: const BouncingScrollPhysics(),
                        ),
                        child: DropdownButtonFormField<String>(
                          isExpanded: true,
                          itemHeight: 64,
                          menuMaxHeight: 200,
                          hint: Text(l10n.schoolType),
                          validator: (value) {
                            if (value == null) {
                              return l10n.fieldIsRequired;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: l10n.schoolType,
                            filled: true,
                            fillColor: AppColors.greyColor.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                          ),
                          items: List.generate(15, (index) {
                            return DropdownMenuItem(
                              value: 'Item ${index + 1}',
                              child: Text('Item ${index + 1}'),
                            );
                          }),
                          onChanged: print,
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpaceLarge,
                    Button(
                      text: l10n.submit,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
