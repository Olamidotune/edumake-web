import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/successful_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class CreateNewPasswordDialog extends StatefulWidget {
  const CreateNewPasswordDialog({super.key});

  @override
  State<CreateNewPasswordDialog> createState() => _WebVerifyOtpDialogState();
}

class _WebVerifyOtpDialogState extends State<CreateNewPasswordDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final FocusNode confirmPasswordFocusNode = FocusNode();
  final ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);
  final ValueNotifier<bool> obscureConfirmPassword = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.horizontalSpacingSmall,
            vertical: AppSpacing.verticalValueMedium),
        child: Form(
          key: _formKey,
          child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) =>
                _onAuthBlocBuildWhen(context, previous, current),
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create New\nPassword',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'Create a strong password that you can remember.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  AppSpacing.verticalSpaceLarge,
                  WebCustomTextFormField(
                    textInputAction: TextInputAction.next,
                    controller: passwordController,
                    focusNode: passwordFocusNode,
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
                    focusNode: confirmPasswordFocusNode,
                    title: 'Confirm Password',
                    hintText: 'Input your preferred password',
                    keyboardType: TextInputType.text,
                    prefixIcon: 'password',
                    obscureText: obscureConfirmPassword.value,
                    isPassword: true,
                    onFieldSubmitted: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                              AuthEvent.createNewPassword(
                                passwordController.value.text,
                              ),
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
                  AppSpacing.verticalSpaceHuge,
                  Button(
                    isWeb: true,
                    busy: state.createNewPasswordStatus ==
                        FormzSubmissionStatus.inProgress,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                              AuthEvent.createNewPassword(
                                passwordController.value.text,
                              ),
                            );
                      }
                    },
                    text: 'Create Password',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  bool _onAuthBlocBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    if (previous.createNewPasswordStatus == FormzSubmissionStatus.inProgress &&
        current.createNewPasswordStatus == FormzSubmissionStatus.success) {
      _showSuccessDialog(context);
      return false;
    } else if (previous.createNewPasswordStatus ==
            FormzSubmissionStatus.inProgress &&
        current.createNewPasswordStatus == FormzSubmissionStatus.failure &&
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

  void _showSuccessDialog(BuildContext context) async {
    await showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const SuccessfulDialog(
          isDesktop: true,
          text:
              "You have successful created a new password.\nEnjoy ease in your wards' education management",
        );
      },
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    passwordFocusNode.dispose();

    confirmPasswordController.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }
}
