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
