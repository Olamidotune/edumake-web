import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';

class ImportCSVButton extends StatelessWidget {
  const ImportCSVButton({
    required this.onTap,
    required this.name,
    super.key,
  });
  final void Function() onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Import $name data (CSV)',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryTextColor,
                  ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.primaryColor.withOpacity(0.7),
              size: 16.fontSize,
            ),
          ],
        ),
      ),
    );
  }
}
