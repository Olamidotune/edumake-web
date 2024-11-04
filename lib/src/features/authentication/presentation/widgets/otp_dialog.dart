import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/kyc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/basic_info.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OtpDialog extends StatelessWidget {
  const OtpDialog({super.key});

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
            "Your email address was successfully verified and your account was successfully created. Enjoy ease in your wards' education management.",
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
            // Navigator.of(context).pop();
            // Navigator.of(context).popAndPushNamed(
            //   KycScreen.routeName,
            // );
            Navigator.of(context).pop();
            _navigate(context);
          },
        ),
      ],
    );
  }

  void _navigate(BuildContext context) async {
    final role = await UserRoleHelper.getUserRole();
    switch (role) {
      case UserRole.parentStudent:
        await Navigator.of(context).popAndPushNamed(
          KycScreen.routeName,
        );
      case UserRole.teacher:
        await Navigator.of(context).popAndPushNamed(
          KycScreen.routeName,
        );
      case UserRole.schoolManagement:
        await Navigator.of(context).popAndPushNamed(
          SchoolBasicInfoScreen.routeName,
        );
      case null:
    }
  }
}
