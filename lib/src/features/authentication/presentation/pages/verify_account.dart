import 'dart:async';

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/successful_dialog.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});
  static const routeName = 'verify-account';

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  Timer? _timer;

  int _remainingTime = 300; // 5 minutes (300 seconds)

  final TextEditingController _otpController = TextEditingController();

  @override
  void initState() {
    _startCountdown();
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.resendOtp());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(
          AppSpacing.horizontalSpacing,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) {
              return _authBlocBuildWhen(context, previous, current);
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verify your\nEmail Account',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 32.fontSize,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'A set of numbers was sent to your mail, we need you to input them here. This is for security measures and will take just few minutes.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w300,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Text(
                    'Enter code',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    controller: _otpController,
                    dialogConfig: DialogConfig(
                      dialogTitle: 'Enter OTP',
                      dialogContent: 'Enter the code sent to your email',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    ],
                    animationType: AnimationType.fade,
                    onChanged: (code) => context
                        .read<AuthBloc>()
                        .add(AuthEvent.otpChanged(code)),
                    onCompleted: (code) =>
                        context.read<AuthBloc>().add(AuthEvent.verifyOtp(code)),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: AppColors.primaryColor.withOpacity(0.1),
                      inactiveFillColor: AppColors.greyColor.withOpacity(0.1),
                      selectedFillColor:
                          AppColors.primaryColor.withOpacity(0.1),
                      activeColor: AppColors.primaryColor,
                      inactiveColor: AppColors.greyColor,
                      selectedColor: AppColors.primaryColor,
                    ),
                  ),
                  if (!state.otp.isPure && state.otp.isNotValid)
                    Text(
                      'Invalid OTP',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.red,
                            height: 1.5,
                          ),
                    ),
                  AppSpacing.verticalSpaceSmall,
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Code expires in ',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 12.fontSize,
                              fontWeight: FontWeight.w300,
                            ),
                        children: [
                          TextSpan(
                            text:
                                '${_remainingTime ~/ 60}:${(_remainingTime % 60).toString().padLeft(2, '0')}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 12.fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.redColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Didn't receive code? ",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: 12.fontSize,
                              fontWeight: FontWeight.w300,
                            ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = _showRemainingTimeToast,
                            text: 'Resend',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 12.fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height:
                        AppSpacing.screenHeight(context) < kMinSupportedHeight
                            ? 150.height
                            : 270.height,
                  ),
                  Button(
                    text: 'Verify',
                    busy: state.otpStatus == FormzSubmissionStatus.inProgress,
                    onPressed: () => context.read<AuthBloc>().add(
                          AuthEvent.verifyOtp(_otpController.text),
                        ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  bool _authBlocBuildWhen(
    BuildContext context,
    AuthState previous,
    AuthState current,
  ) {
    // Handle OTP submission success
    if (previous.otpStatus == FormzSubmissionStatus.inProgress &&
        current.otpStatus == FormzSubmissionStatus.success) {
      _showOtpSuccessDialog(context);
      ToastService.toast('Please Login');
      return false;
    }

    // Handle resend OTP success
    if (previous.resendOtpStatus == FormzSubmissionStatus.inProgress &&
        current.resendOtpStatus == FormzSubmissionStatus.success) {
      ToastService.toast('Verification Code Re-Sent!');
      return false;
    }

    // Handle OTP submission failure
    if (previous.otpStatus == FormzSubmissionStatus.inProgress &&
        current.otpStatus == FormzSubmissionStatus.failure) {
      ToastService.toast(
        current.errorMessage ?? '',
        ToastType.error,
      );
      return true;
    }

    return true;
  }

  void _showRemainingTimeToast() {
    if (_remainingTime > 0 && _remainingTime < 120) {
      ToastService.toast(
        'Try again in ${_remainingTime ~/ 60}:${(_remainingTime % 60).toString().padLeft(2, '0')} mins',
      );
    } else if (_remainingTime == 0) {
      _remainingTime = 120;
      context.read<AuthBloc>().add(const AuthEvent.resendOtp());
      _startCountdown();
      ToastService.toast('Verification Code Re-Sent!');
      logInfo('Resend OTP');
    }
  }

  // This function starts the countdown
  void _startCountdown() {
    if (_timer != null) {
      _timer!.cancel();
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer!.cancel();
        }
      });
    });
  }

  void _showOtpSuccessDialog(BuildContext context) async {
    await showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const SuccessfulDialog(text: AppStrings.otpSuccessMessage);
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
