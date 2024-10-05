import 'dart:async';

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/widgets/otp_dialog.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_snackbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});
  static const routeName = 'verify-account';

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  Timer? _timer;

  int _remainingTime = 120; // 2 minutes (120 seconds)

  bool _busy = false;

  final TextEditingController _otpController = TextEditingController();

  @override
  void initState() {
    _startCountdown();
    super.initState();
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
          child: Column(
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
                onCompleted: (otpValue) {
                  if (otpValue.length == 6) {
                    if (!_busy) {
                      setState(() {
                        _busy = true;
                      });
                      Timer(const Duration(seconds: 2), () {
                        _showOtpSuccessDialog(context);
                        setState(() {
                          _busy = false;
                        });
                      });
                    }
                  }
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: AppColors.primaryColor.withOpacity(0.1),
                  inactiveFillColor: AppColors.greyColor.withOpacity(0.1),
                  selectedFillColor: AppColors.primaryColor.withOpacity(0.1),
                  activeColor: AppColors.primaryColor,
                  inactiveColor: AppColors.greyColor,
                  selectedColor: AppColors.primaryColor,
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
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                    text: "Didn't receive the code? ",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w300,
                        ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //Add logic to resend the code
                            _startCountdown();
                            _remainingTime = 120;
                          },
                        text: 'Resend',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                height: AppSpacing.screenHeight(context) < kMinSupportedHeight
                    ? 200.height
                    : 300.height,
              ),
              Button(
                text: 'Verify',
                busy: _busy,
                onPressed: () {
                  if (_otpController.text.length == 6) {
                    if (!_busy) {
                      setState(() {
                        _busy = true;
                      });
                      Timer(const Duration(seconds: 2), () {
                        _showOtpSuccessDialog(context);
                        setState(() {
                          _busy = false;
                        });
                      });
                    }
                    debugPrint(_otpController.text);
                  } else {
                    CustomSnackbar.show(
                      context,
                      'Fill in the OTP code.',
                      isError: true,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
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
        return const OtpDialog();
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
