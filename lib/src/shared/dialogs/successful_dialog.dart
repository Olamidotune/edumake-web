import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessfulDialog extends StatelessWidget {
  const SuccessfulDialog({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/svg/successful.svg'),
          AppSpacing.verticalSpaceLarge,
          Text(
            'Successful',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 24.fontSize,
                  fontWeight: FontWeight.w300,
                ),
          ),
          AppSpacing.verticalSpaceMedium,
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w300,
                ),
          ),
        ],
      ),
      actions: [
        Button(
          text: 'Continue',
          onPressed: () {
            Navigator.of(context).pop();
            _navigate(context);
          },
        ),
      ],
    );
  }

  void _navigate(BuildContext context) async {
    await Navigator.of(context).pushNamedAndRemoveUntil(
      SignIn.routeName,
      (_) => false,
    );
  }
}

class TestAndExamDialog extends StatelessWidget {
  const TestAndExamDialog({
    super.key,
    this.onTestPressed,
    this.onExamPressed,
  });

  final void Function()? onTestPressed;
  final void Function()? onExamPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Test/Exam Results',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 18.fontSize,
                  fontWeight: FontWeight.bold,
                ),
          ),
          AppSpacing.verticalSpaceMedium,
          Text(
            'Select the result you want to see for this ward',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 16.fontSize,
                fontWeight: FontWeight.w300,
                color: AppColors.primaryColor.withValues(alpha: .8)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: AppSpacing.verticalValueMedium,
          children: [
            Button(
              text: 'Test',
              onPressed: onTestPressed,
            ),
            Button(
              text: 'Exam',
              onPressed: onExamPressed,
            ),
          ],
        ),
      ],
    );
  }
}
