import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SkipKycDialog extends StatelessWidget {
  const SkipKycDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/svg/error.svg'),
          AppSpacing.verticalSpaceMedium,
          Text(
            'Note that, without the KYC you cannot be connected to a pupil and might not have a perfect experience here.',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w300,
                ),
            textAlign: TextAlign.center,
          ),
          AppSpacing.verticalSpaceMedium,
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Button(
                buttonColor: AppColors.primaryColor.withOpacity(0.3),
                textColor: AppColors.secondaryTexColor,
                text: 'Continue',
                onPressed: () {
                  // Navigator.of(context).pop();
                },
              ),
            ),
            AppSpacing.horizontalSpaceMedium,
            Expanded(
              child: Button(
                text: 'Back',
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
