import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/successful_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';

class CreateNewPassword extends HookWidget {
  const CreateNewPassword({super.key});

  static const routeName = 'create-new-password-screen';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final passwordController = useTextEditingController();
    final passwordFocusNode = useFocusNode();
    final confirmPasswordController = useTextEditingController();
    final confirmPasswordFocusNode = useFocusNode();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final obscurePassword = useState(true);
    final obscureConfirmPassword = useState(true);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) =>
                _onAuthBlocBuildWhen(context, previous, current),
            builder: (context, state) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Padding(
                  padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create New\nPassword',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 32.fontSize,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Text(
                          'Create a strong password that you can remember.',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.w300,
                                  ),
                          textAlign: TextAlign.justify,
                        ),
                        AppSpacing.verticalSpaceLarge,
                        CustomTextFormField(
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
                        CustomTextFormField(
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
                            if (formKey.currentState!.validate()) {
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
                          onSuffixIconPressed: () => obscureConfirmPassword
                              .value = !obscureConfirmPassword.value,
                        ),
                        AppSpacing.verticalSpaceHuge,
                        Button(
                          busy: state.createNewPasswordStatus ==
                              FormzSubmissionStatus.inProgress,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
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
                    ),
                  ),
                ),
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
          isDesktop: false,
          text: AppStrings.createNewPasswordSuccessMessage,
        );
      },
    );
  }
}
