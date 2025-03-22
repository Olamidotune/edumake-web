import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

class ImportCSVButton extends StatelessWidget {
  const ImportCSVButton({
    required this.onTap,
    required this.name,
    this.isWeb = false,
    super.key,
  });
  final void Function() onTap;
  final String name;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: isWeb ? 70 : null,
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.primaryColor),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              offset: const Offset(3, 5),
              blurRadius: 4,
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Import $name data (CSV)',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryTextColor,
                  fontSize: 16,
                ),
          ),
        ),
      ),
    );
  }
}
