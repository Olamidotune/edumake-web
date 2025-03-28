import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/sign_in.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/privacy_policy.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/terms_and_conditions.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SignUpScreenMobileView extends StatelessWidget {
  const SignUpScreenMobileView({
    required this.formKey,
    required this.emailController,
    required this.emailNode,
    required this.passwordController,
    required this.passwordNode,
    required this.obscurePassword,
    required this.confirmPasswordController,
    required this.confirmPasswordNode,
    required this.obscureConfirmPassword,
    required this.checkedPrivacyPolicy,
    required this.userRole,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final FocusNode emailNode;
  final TextEditingController passwordController;
  final FocusNode passwordNode;
  final ValueNotifier<bool> obscurePassword;
  final TextEditingController confirmPasswordController;
  final FocusNode confirmPasswordNode;
  final ValueNotifier<bool> obscureConfirmPassword;
  final ValueNotifier<bool> checkedPrivacyPolicy;
  final UserRole? userRole;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppSpacing.verticalSpaceTiny,
        Text(
          'Sign Up to \nEdu-Make',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 32.fontSize,
                fontWeight: FontWeight.w300,
              ),
        ),
        AppSpacing.verticalSpaceSmall,
        Text(
          'Welcome, we are delighted to have you here.',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 12.fontSize,
                fontWeight: FontWeight.w300,
              ),
          textAlign: TextAlign.justify,
        ),
        AppSpacing.verticalSpaceLarge,
        Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormField(
                textInputAction: TextInputAction.next,
                controller: emailController,
                focusNode: emailNode,
                title: 'Email Address',
                hintText: 'Enter your preferred email address',
                keyboardType: TextInputType.emailAddress,
                prefixIcon: 'email',
                onChanged: (value) => context.read<AuthBloc>().add(
                      AuthEvent.emailChanged(value),
                    ),
                validator: (value) {
                  if (EmailValidator.validate(value?.trim() ?? '')) {
                    return null;
                  }
                  return 'Please enter a valid email address';
                },
              ),
              AppSpacing.verticalSpaceMedium,
              CustomTextFormField(
                textInputAction: TextInputAction.next,
                controller: passwordController,
                focusNode: passwordNode,
                title: 'Password',
                hintText: 'Input your preferred password',
                keyboardType: TextInputType.text,
                prefixIcon: 'password',
                obscureText: obscurePassword.value,
                isPassword: true,
                onChanged: (value) => context.read<AuthBloc>().add(
                      AuthEvent.passwordChanged(value),
                    ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field cannot be empty';
                  }
                  const pattern =
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                  if (!RegExp(pattern).hasMatch(value)) {
                    return 'Password must contain:\n'
                        '• At least 8 characters\n'
                        '• 1 uppercase letter\n'
                        '• 1 lowercase letter\n'
                        '• 1 number\n'
                        r'• 1 special character (!@#$&*~)';
                  }
                  if (value != confirmPasswordController.value.text) {
                    return 'Passwords do not match';
                  }

                  return null;
                },
                onSuffixIconPressed: () =>
                    obscurePassword.value = !obscurePassword.value,
              ),
              AppSpacing.verticalSpaceMedium,
              CustomTextFormField(
                textInputAction: TextInputAction.go,
                controller: confirmPasswordController,
                focusNode: confirmPasswordNode,
                title: 'Confirm Password',
                hintText: 'Input your preferred password',
                keyboardType: TextInputType.text,
                prefixIcon: 'password',
                obscureText: obscureConfirmPassword.value,
                isPassword: true,
                onChanged: (value) => context.read<AuthBloc>().add(
                      AuthEvent.onConfirmPasswordChanged(value),
                    ),
                onFieldSubmitted: () {
                  logInfo('Form submitted');
                  if (formKey.currentState!.validate()) {
                    if (!checkedPrivacyPolicy.value) {
                      ToastService.toast(
                        'Please accept the privacy policy and terms of service',
                        ToastType.info,
                      );
                      return;
                    }
                    context.read<AuthBloc>().add(
                          const AuthEvent.signUp(),
                        );
                  }
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field cannot be empty';
                  }
                  const pattern =
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                  if (!RegExp(pattern).hasMatch(value)) {
                    return 'Password must contain:\n'
                        '• At least 8 characters\n'
                        '• 1 uppercase letter\n'
                        '• 1 lowercase letter\n'
                        '• 1 number\n'
                        r'• 1 special character (!@#$&*~)';
                  }
                  if (value != passwordController.value.text) {
                    return 'Passwords do not match';
                  }

                  return null;
                },
                onSuffixIconPressed: () => obscureConfirmPassword.value =
                    !obscureConfirmPassword.value,
              ),
              AppSpacing.verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: AppColors.primaryColor,
                    value: checkedPrivacyPolicy.value,
                    onChanged: (value) {
                      checkedPrivacyPolicy.value = value!;
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'I have read, and I accept',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: AppColors.primaryTextColor,
                            ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushNamed(
                                  PrivacyPolicy.routeName,
                                );
                              },
                            text: ' the privacy policy ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                          TextSpan(
                            text: 'and',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.blackColor,
                                ),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushNamed(
                                  TermsAndConditions.routeName,
                                );
                              },
                            text: ' terms of service ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                          TextSpan(
                            text: ' of Edu-Make',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.blackColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpaceHuge,
              Button(
                text: 'Sign Up',
                busy: state.signUpStatus == FormzSubmissionStatus.inProgress,
                onPressed: () {
                  logInfo(
                    'Sign up button pressed for user role: $userRole',
                  );
                  if (formKey.currentState!.validate()) {
                    if (!checkedPrivacyPolicy.value) {
                      ToastService.toast(
                        'Please accept the privacy policy and terms of service',
                        ToastType.info,
                      );
                      return;
                    }
                    context.read<AuthBloc>().add(
                          const AuthEvent.signUp(),
                        );
                  }
                },
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpaceMedium,
        Center(
          child: RichText(
            text: TextSpan(
              text: '${AppStrings.alreadyHaveAnAccountWithUs} ',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 13.fontSize,
                    fontWeight: FontWeight.w300,
                    color: AppColors.primaryTextColor,
                  ),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed(SignIn.routeName);
                    },
                  text: 'Sign in',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontFamily: 'HelveticaNeueRounded',
                        fontSize: 13.fontSize,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
