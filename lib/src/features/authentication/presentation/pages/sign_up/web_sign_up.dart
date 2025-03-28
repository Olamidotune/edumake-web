import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/sign_in.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/privacy_policy.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/terms_and_conditions.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/small_social_button.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SignUpScreenWebView extends StatelessWidget {
  const SignUpScreenWebView(
      this.formKey,
      this.emailController,
      this.emailNode,
      this.passwordController,
      this.passwordNode,
      this.obscurePassword,
      this.state,
      this.confirmPasswordController,
      this.confirmPasswordNode,
      this.obscureConfirmPassword,
      this.checkedPrivacyPolicy,
      {super.key});

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final FocusNode emailNode;
  final TextEditingController passwordController;
  final FocusNode passwordNode;
  final TextEditingController confirmPasswordController;
  final FocusNode confirmPasswordNode;
  final ValueNotifier<bool> obscurePassword;
  final ValueNotifier<bool> obscureConfirmPassword;
  final ValueNotifier<bool> checkedPrivacyPolicy;

  final AuthState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withValues(alpha: .8),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 200.height),
                  Image.asset(
                    'assets/png/w_onboarding.png',
                    height: 300.height,
                  ),
                  AppSpacing.horizontalSpaceMedium,
                  Text(
                    "Organizing student's data streamlines tracking of progress, enables personalized learning, improves communication with parents, and simplifies administration.",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: AppColors.whiteColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 200.height),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    'Sign up to\nEdu-Make',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 56,
                        fontWeight: FontWeight.w300,
                        color: AppColors.primaryColor),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    AppStrings.welcomeWeAreDelighted,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color:
                            AppColors.primaryTextColor.withValues(alpha: .8)),
                  ),
                  AppSpacing.verticalSpaceHuge,
                  WebCustomTextFormField(
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
                  WebCustomTextFormField(
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
                  WebCustomTextFormField(
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
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          activeColor: AppColors.primaryColor,
                          value: true,
                          onChanged: (value) {},
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'I have read, and I accept',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 16,
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor,
                                      ),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  text: 'and',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontFamily: 'HelveticaNeueRounded',
                                        fontSize: 16,
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
                                        fontSize: 16,
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
                                        fontSize: 16,
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
                  ),
                  AppSpacing.verticalSpaceHuge,
                  AppSpacing.verticalSpaceHuge,
                  Button(
                    isWeb: true,
                    text: 'Sign Up',
                    busy:
                        state.signInStatus == FormzSubmissionStatus.inProgress,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                              const AuthEvent.signIn(),
                            );
                      }
                    },
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: '${AppStrings.alreadyHaveAnAccountWithUs} ',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: AppColors.primaryTextColor,
                            ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context)
                                    .pushNamed(SignIn.routeName);
                              },
                            text: 'Sign In',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontFamily: 'HelveticaNeueRounded',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primaryColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpaceHuge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          color: AppColors.greyColor,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or continue with',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: AppColors.greyColor,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallSocialButton(
                        icon: 'small_google',
                      ),
                      AppSpacing.horizontalSpaceMassive,
                      const SmallSocialButton(
                        icon: 'small_facebook',
                      ),
                    ],
                  ),
                  AppSpacing.verticalSpaceMassive,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
