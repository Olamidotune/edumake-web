import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/sign_in.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WebSchoolBasicInfoSuccessDialog extends StatelessWidget {
  const WebSchoolBasicInfoSuccessDialog(
      {required this.text, super.key, this.titleText});
  final String text;
  final String? titleText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.whiteColor,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/svg/tick_successful.svg'),
          AppSpacing.verticalSpaceLarge,
          Text(
            titleText ?? 'Successful',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.blackColor),
          ),
          AppSpacing.verticalSpaceMedium,
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w300,
                  color: AppColors.primaryTextColor,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        Button(
          isWeb: true,
          text: 'Done',
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).popAndPushNamed(SignIn.routeName);
          },
        ),
      ],
    );
  }
}
