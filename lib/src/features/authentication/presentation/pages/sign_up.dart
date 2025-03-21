import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/privacy_policy.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/privacy_and_terms/terms_and_conditions.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/small_social_button.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key, this.userRole});
  final UserRole? userRole;

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

    final checkedPrivacyPolicy = useState(false);

    return Scaffold(
      appBar: ScreenUtil().screenWidth > kMedDesktopWidth
          ? null
          : const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil().screenWidth > kMedDesktopWidth
            ? 0
            : AppSpacing.horizontalSpacing),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) =>
                _onOnboardingBlocBuildWhen(context, previous, current),
            builder: (context, state) {
              return ScreenUtil().screenWidth > kMedDesktopWidth
                  ? _SignUpScreenWebView(
                      formKey,
                      emailController,
                      emailNode,
                      passwordController,
                      passwordNode,
                      obscurePassword,
                      state,
                      confirmPasswordController,
                      confirmPasswordNode,
                      obscureConfirmPassword,
                      checkedPrivacyPolicy,
                    )
                  : _SignUpScreenMobileView(
                      formKey: formKey,
                      emailController: emailController,
                      emailNode: emailNode,
                      passwordController: passwordController,
                      passwordNode: passwordNode,
                      obscurePassword: obscurePassword,
                      confirmPasswordController: confirmPasswordController,
                      confirmPasswordNode: confirmPasswordNode,
                      obscureConfirmPassword: obscureConfirmPassword,
                      checkedPrivacyPolicy: checkedPrivacyPolicy,
                      userRole: userRole);
            },
          ),
        ),
      ),
    );
  }

  bool _onOnboardingBlocBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    if (previous.signUpStatus == FormzSubmissionStatus.inProgress &&
        current.signUpStatus == FormzSubmissionStatus.success) {
      debugPrint('Sign up successful');
      ToastService.toast(AppStrings.welcome);
      Navigator.of(context).pushNamed(VerifyAccount.routeName);
    } else if (previous.signUpStatus == FormzSubmissionStatus.inProgress &&
        current.signUpStatus == FormzSubmissionStatus.failure) {
      ToastService.toast(current.errorMessage!, ToastType.error);
      return true;
    }
    return true;
  }
}

class _SignUpScreenMobileView extends StatelessWidget {
  const _SignUpScreenMobileView({
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
                            recognizer: TapGestureRecognizer()..onTap = () {},
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
    );
  }
}

class _SignUpScreenWebView extends StatelessWidget {
  const _SignUpScreenWebView(
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
  );

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
                      logInfo(
                        'Sign in button pressed: ${state.user?.school?.schoolID}',
                      );
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
                        text: 'Already have an account with us? ',
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
                                Navigator.pushNamed(
                                  context,
                                  OnboardingScreenTwo.routeName,
                                );
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
