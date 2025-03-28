import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/forgot_password.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/small_social_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SignInMobileView extends StatelessWidget {
  const SignInMobileView({
    required this.formKey,
    required this.emailController,
    required this.emailNode,
    required this.passwordController,
    required this.passwordNode,
    required this.obscurePassword,
    required this.state,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final FocusNode emailNode;
  final TextEditingController passwordController;
  final FocusNode passwordNode;
  final ValueNotifier<bool> obscurePassword;

  final AuthState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppSpacing.verticalSpaceMassive,
        AppSpacing.verticalSpaceMassive,
        Text(
          'Welcome\nback',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 32.fontSize,
                fontWeight: FontWeight.w300,
              ),
        ),
        AppSpacing.verticalSpaceSmall,
        Text(
          'We are delighted to have you back here.',
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
                onChanged: (value) {
                  context.read<AuthBloc>().add(
                        AuthEvent.emailChanged(value),
                      );
                },
                validator: (value) {
                  if (EmailValidator.validate(
                    value?.trim() ?? '',
                  )) {
                    return null;
                  }
                  return 'Please enter a valid email address';
                },
              ),
              AppSpacing.verticalSpaceMedium,
              CustomTextFormField(
                textInputAction: TextInputAction.go,
                controller: passwordController,
                focusNode: passwordNode,
                title: 'Password',
                hintText: 'Input your preferred password',
                keyboardType: TextInputType.text,
                prefixIcon: 'password',
                obscureText: obscurePassword.value,
                isPassword: true,
                onChanged: (value) {
                  context.read<AuthBloc>().add(
                        AuthEvent.passwordChanged(value),
                      );
                },
                onFieldSubmitted: () {
                  if (formKey.currentState!.validate()) {
                    context.read<AuthBloc>().add(
                          const AuthEvent.signIn(),
                        );
                  }
                },
                // validator: validatePassword,
                onSuffixIconPressed: () =>
                    obscurePassword.value = !obscurePassword.value,
              ),
              AppSpacing.verticalSpaceMassive,
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Forgot password? ',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 16.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed(
                              ForgotPasswordScreen.routeName,
                            );
                          },
                        text: 'Recover Password',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 16.fontSize,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              Button(
                text: 'Sign In',
                busy: state.signInStatus == FormzSubmissionStatus.inProgress,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<AuthBloc>().add(
                          const AuthEvent.signIn(),
                        );
                  }
                },
              ),
              AppSpacing.verticalSpaceMedium,
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account with us? ",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 16.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                              context,
                              OnboardingScreenTwo.routeName,
                            );
                          },
                        text: 'Sign up',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 16.fontSize,
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
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
            ],
          ),
        ),
        AppSpacing.verticalSpaceMassive,
      ],
    );
  }
}
