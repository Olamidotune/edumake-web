import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_snackbar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});

  static const routeName = 'sign-up-screen';

  @override
  Widget build(BuildContext context) {
    // Focus nodes
    final emailNode = useFocusNode();
    final passwordNode = useFocusNode();
    final confirmPasswordNode = useFocusNode();

    //Controllers
    final passwordController = useTextEditingController();
    final emailController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    // obscure password
    final obscurePassword = useState(true);
    final obscureConfirmPassword = useState(true);

    // Form key
    final formKey = useMemoized(GlobalKey<FormState>.new);

    final isBusy = useState(false);
    final checkedPrivacyPolicy = useState(false);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a valid password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a valid password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.primaryTextColor,
                                  ),
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to privacy policy
                                    },
                                  text:
                                      ' the privacy policy and terms of service ',
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
                                  text: 'of Edu-Make',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontFamily: 'HelveticaNeueRounded',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.primaryTextColor,
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
                      busy: isBusy.value,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (!checkedPrivacyPolicy.value) {
                            CustomSnackbar.show(
                              context,
                              'Please accept the privacy policy and terms of service',
                              isError: true,
                            );
                            return;
                          }
                          isBusy.value = true;
                          Future.delayed(const Duration(seconds: 3), () {
                            Navigator.of(context)
                                .pushNamed(VerifyAccount.routeName);
                            isBusy.value = false;
                          });
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
                    text: 'Already have an account with us? ',
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
          ),
        ),
      ),
    );
  }
}
