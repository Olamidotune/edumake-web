import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/permissions/permissions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PermissionWarningContainer extends StatelessWidget {
  const PermissionWarningContainer({
    required this.onTap,
    required this.headingText,
    required this.subHeadingText,
    super.key,
    this.isEnabled = false,
  });
  final bool isEnabled;
  final void Function()? onTap;
  final String headingText;
  final String subHeadingText;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermissionsBloc, PermissionsState>(
      builder: (context, state) {
        if (isEnabled) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacing,
              vertical: 15,
            ),
            decoration: const BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'Turn on $headingText for Edumake',
                  style: const TextStyle(
                    color: AppColors.primaryTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                 Text(
                  'To enable this feature, go to your phone settings and turn on $subHeadingText',
                  style: const TextStyle(
                    color: AppColors.primaryTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      AppColors.blackColor,
                    ),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: onTap,
                  child: const Text(
                    'Go to Settings',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
