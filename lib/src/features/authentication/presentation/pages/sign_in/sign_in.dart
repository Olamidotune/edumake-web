import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/kyc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/basic_info/basic_info.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/mobile_sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/web_sign_in.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/teachers_password_screen.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/verify_account.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/dashboard.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) =>
            _authBuildWhen(context, previous, current),
        builder: (context, state) {
          return SingleChildScrollView(
            child: ScreenUtil().screenWidth > kMedDesktopWidth
                ? SignInScreenWebView(
                    formKey,
                    emailController,
                    emailNode,
                    passwordController,
                    passwordNode,
                    obscurePassword,
                    state,
                  )
                : Padding(
                    padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                    child: SignInMobileView(
                      formKey: formKey,
                      emailController: emailController,
                      emailNode: emailNode,
                      passwordController: passwordController,
                      passwordNode: passwordNode,
                      obscurePassword: obscurePassword,
                      state: state,
                    ),
                  ),
          );
        },
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
        context.read<AuthBloc>().add(const AuthEvent.resendOtp());
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
    final role = context.read<AuthBloc>().state.user?.role;
    if (role == 'parent') {
      await Navigator.of(context).popAndPushNamed(
        KycScreen.routeName,
      );
    } else if (role == 'school-admin') {
      await Navigator.of(context).popAndPushNamed(
        SchoolBasicInfoScreen.routeName,
      );
    } else {
      await Navigator.of(context).popAndPushNamed(
        TeachersPasswordScreen.routeName,
      );
    }
  }
}
