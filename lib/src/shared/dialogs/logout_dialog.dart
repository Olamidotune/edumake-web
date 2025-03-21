import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/sign_in.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/search/search_bloc.dart';
import 'package:edumake_frontend/src/shared/services/auth_services.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: AppSpacing.verticalValueMedium),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/svg/logout.svg',
              height: 50.fontSize,
            ),
            AppSpacing.verticalSpaceMedium,
            Text(
              AppStrings.areYouSureYouWantToLogOut,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: Button(
                text: AppStrings.no,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            AppSpacing.horizontalSpaceMedium,
            Expanded(
              child: Button(
                text: AppStrings.yes,
                buttonColor: AppColors.primaryColor.withOpacity(0.2),
                onPressed: () {
                  context.read<SearchBloc>().add(const SearchEvent.cancel());
                  AuthServices().signOut();
                  ToastService.toast('You have signed out of your account');
                  Navigator.of(context, rootNavigator: true)
                      .pushNamedAndRemoveUntil(
                    SignIn.routeName,
                    (route) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
