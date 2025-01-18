import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_forgot_password.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

class ForgotPasswordScreen extends HookWidget {
  const ForgotPasswordScreen({super.key});
  static const routeName = 'forgot-password-screen';

  @override
  Widget build(BuildContext context) {
    final emailNode = useFocusNode();
    final emailController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: BlocBuilder<AuthBloc, AuthState>(
          buildWhen: (previous, current) {
            return _onAuthBlocBuildWhen(context, previous, current);
          },
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSpacing.verticalSpaceTiny,
                  Text(
                    'Stay Calm',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 32.fontSize,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'We will recover your password in no time. It happens to the best of us. Kindly provide the email address associated to this account.',
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
                          onFieldSubmitted: () {
                            emailNode.unfocus();
                            context.read<AuthBloc>().add(
                                  AuthEvent.forgotPassword(
                                    emailController.value.text.trim(),
                                  ),
                                );
                          },
                          validator: (value) {
                            if (EmailValidator.validate(value?.trim() ?? '')) {
                              return null;
                            }
                            return 'Please enter a valid email address';
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height <
                                  kMinSupportedHeight
                              ? .45.sh
                              : .56.sh,
                        ),
                        Button(
                          busy: state.forgotPasswordStatus ==
                              FormzSubmissionStatus.inProgress,
                          text: 'Submit',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<AuthBloc>().add(
                                    AuthEvent.forgotPassword(
                                      emailController.value.text.trim(),
                                    ),
                                  );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  bool _onAuthBlocBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    if (previous.forgotPasswordStatus == FormzSubmissionStatus.inProgress &&
        current.forgotPasswordStatus == FormzSubmissionStatus.success) {
      ToastService.toast(
        'Password reset link has been sent to your email address',
      );
      Navigator.of(context).pushNamed(VerifyForgotPassword.routeName);

      return false;
    } else if (previous.errorMessage != current.errorMessage &&
        current.errorMessage != null) {
      ToastService.toast(
        current.errorMessage ?? 'An error occurred',
        ToastType.error,
      );
      context.read<AuthBloc>().add(const AuthEvent.errorMessage(null));
      return false;
    }
    return true;
  }
}
