import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up/mobile_sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up/web_sign_up.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/shared/dialogs/web_verify_otp_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
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
                  ? SignUpScreenWebView(
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
                  : SignUpScreenMobileView(
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
      ScreenUtil().screenWidth > kMedDesktopWidth
          ? _showWebVerifyDialog(context)
          : Navigator.of(context).pushNamed(VerifyAccount.routeName);
    } else if (previous.signUpStatus == FormzSubmissionStatus.inProgress &&
        current.signUpStatus == FormzSubmissionStatus.failure) {
      ToastService.toast(current.errorMessage!, ToastType.error);
      return true;
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
