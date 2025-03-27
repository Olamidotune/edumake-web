import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/successful_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class TeachersPasswordScreen extends StatefulWidget {
  const TeachersPasswordScreen({super.key});

  static const String routeName = 'teachers_password';

  @override
  State<TeachersPasswordScreen> createState() => _TeachersPasswordScreenState();
}

class _TeachersPasswordScreenState extends State<TeachersPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) =>
                _authBuildWhen(context, previous, current),
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome',
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 32.fontSize,
                                  fontWeight: FontWeight.w300,
                                ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        'You were invited by ${state.school?.schoolName ?? ''} as an English Language Teacher.',
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
                            AppSpacing.verticalSpaceMedium,
                            CustomTextFormField(
                              textInputAction: TextInputAction.next,
                              controller: passwordController,
                              focusNode: passwordFocusNode,
                              title: 'Password',
                              hintText: 'Input your preferred password',
                              keyboardType: TextInputType.text,
                              prefixIcon: 'password',
                              obscureText: obscurePassword,
                              isPassword: true,
                              onChanged: (value) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.passwordChanged(value),
                                    );
                              },
                              onSuffixIconPressed: () {
                                setState(() {
                                  obscurePassword =
                                      !obscurePassword; // Toggle password visibility
                                });
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
                            ),
                            AppSpacing.verticalSpaceMedium,
                            CustomTextFormField(
                              textInputAction: TextInputAction.go,
                              controller: confirmPasswordController,
                              focusNode: confirmPasswordFocusNode,
                              title: 'Confirm Password',
                              hintText: 'Input your preferred password',
                              keyboardType: TextInputType.text,
                              prefixIcon: 'password',
                              obscureText: obscureConfirmPassword,
                              isPassword: true,
                              onChanged: (value) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.passwordChanged(value),
                                    );
                              },
                              onFieldSubmitted: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                        const AuthEvent
                                            .changeTeachersPassword(),
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
                              onSuffixIconPressed: () {
                                setState(() {
                                  obscureConfirmPassword =
                                      !obscureConfirmPassword;
                                });
                              },
                            ),
                            SizedBox(
                              height: 280.height,
                            ),
                            Button(
                              text: 'Create Account',
                              busy: state.changeTeacherPasswordStatus ==
                                  FormzSubmissionStatus.inProgress,
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                        const AuthEvent
                                            .changeTeachersPassword(),
                                      );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  bool _authBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    if (previous.changeTeacherPasswordStatus ==
            FormzSubmissionStatus.inProgress &&
        current.changeTeacherPasswordStatus == FormzSubmissionStatus.success) {
      _showSuccessDialog(context);
      return false;
    } else if (previous.changeTeacherPasswordStatus ==
            FormzSubmissionStatus.inProgress &&
        current.changeTeacherPasswordStatus == FormzSubmissionStatus.failure &&
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
          isDesktop: false,
          text:
              'Successfully changed your password, you can now login with you new password',
        );
      },
    );
  }
}
