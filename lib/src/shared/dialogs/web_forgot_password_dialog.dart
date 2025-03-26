import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/web_verify_otp_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class WebForgotPasswordDialog extends StatelessWidget {
  const WebForgotPasswordDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final textFocusNode = FocusNode();
    final formKey = GlobalKey<FormState>();
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) {
        return _onAuthBlocBuildWhen(context, previous, current);
      },
      builder: (context, state) {
        return AlertDialog(
          content: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacingSmall,
                vertical: AppSpacing.verticalValueMedium),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Stay Calm',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Text(
                    'We will recover your password in no time. It happens to the best of us. \nKindly provide the email address associated to this account.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  AppSpacing.verticalSpaceMassive,
                  WebCustomTextFormField(
                    title: AppStrings.emailAddress,
                    controller: textController,
                    focusNode: textFocusNode,
                    hintText: AppStrings.emailAddress,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: () {
                      textFocusNode.unfocus();
                      context.read<AuthBloc>().add(
                            AuthEvent.forgotPassword(
                              textController.value.text.trim(),
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
                  const SizedBox(
                    height: 300,
                  ),
                  Button(
                    busy: state.forgotPasswordStatus ==
                        FormzSubmissionStatus.inProgress,
                    isWeb: true,
                    text: AppStrings.submit,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                              AuthEvent.forgotPassword(
                                textController.value.text.trim(),
                              ),
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
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
      _showWebVerifyDialog(context);

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

  void _showWebVerifyDialog(BuildContext context) async {
    await showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const WebVerifyOtpDialog();
      },
    );
  }
}
