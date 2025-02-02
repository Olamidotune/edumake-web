import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/utils/validator.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/forgot_password.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/kyc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/basic_info.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/dashboard.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/shared_preferences.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/small_social_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';

class SignIn extends HookWidget {
  const SignIn({super.key});

  static const routeName = 'sign-in';

  @override
  Widget build(BuildContext context) {
    // Focus nodes
    final emailNode = useFocusNode();
    final passwordNode = useFocusNode();

    //Controllers
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    // obscure password
    final obscurePassword = useState(true);

    // Form key
    final formKey = useMemoized(GlobalKey<FormState>.new);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) =>
                _authBuildWhen(context, previous, current),
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppSpacing.verticalSpaceTiny,
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
                            validator: validatePassword,
                            onSuffixIconPressed: () =>
                                obscurePassword.value = !obscurePassword.value,
                          ),
                          AppSpacing.verticalSpaceMassive,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Forgot password? ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'HelveticaNeueRounded',
                                      fontSize: 16.fontSize,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.primaryTextColor,
                                    ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    ForgotPasswordScreen.routeName,
                                  );
                                },
                                child: Text(
                                  'Recover Password',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontFamily: 'HelveticaNeueRounded',
                                        fontSize: 16.fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Button(
                            text: 'Sign In',
                            busy: state.signInStatus ==
                                FormzSubmissionStatus.inProgress,
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
                          AppSpacing.verticalSpaceMedium,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account with us? ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'HelveticaNeueRounded',
                                      fontSize: 16.fontSize,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.primaryTextColor,
                                    ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    OnboardingScreenTwo.routeName,
                                  );
                                  // Navigator.of(context)
                                  //     .pushNamed(SignUpScreen.routeName);
                                },
                                child: Text(
                                  'Sign up',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontFamily: 'HelveticaNeueRounded',
                                        fontSize: 16.fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor,
                                      ),
                                ),
                              ),
                            ],
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Or continue with',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
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
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  bool _authBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    if (previous.signInStatus == FormzSubmissionStatus.inProgress &&
        current.signInStatus == FormzSubmissionStatus.success) {
      if (current.user?.hasOnboarded == false) {
        // Use post-frame callback to ensure proper navigation
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _navigate(context);
          ToastService.toast(
            'Welcome, please fill in your details.',
            ToastType.warning,
          );
        });
      } else {
        ToastService.toast('Sign in successful');
        Navigator.of(context).popAndPushNamed(Dashboard.routeName);
        return false;
      }
    } else if (previous.signInStatus == FormzSubmissionStatus.inProgress &&
        current.signInStatus == FormzSubmissionStatus.failure) {
      if (current.errorMessage!.contains('Please confirm your email first.')) {
        ToastService.toast(
          current.errorMessage ?? 'An error occurred',
          ToastType.warning,
        );
        Navigator.of(context)
            .pushNamedAndRemoveUntil(VerifyAccount.routeName, (route) => false);
      } else {
        ToastService.toast(
          current.errorMessage ?? 'An error occurred',
          ToastType.error,
        );
      }
      return true;
    }
    return true;
  }

  void _navigate(BuildContext context) async {
    final role = await UserRoleHelper.getUserRole();
    if (role == UserRole.parent || role == UserRole.teacher) {
      await Navigator.of(context).popAndPushNamed(
        KycScreen.routeName,
      );
    } else {
      await Navigator.of(context).popAndPushNamed(
        SchoolBasicInfoScreen.routeName,
      );
    }
  }
}
