import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

class WebAddSchoolContainer extends StatelessWidget {
  const WebAddSchoolContainer({
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onTap,
    super.key,
  });

  final String title;
  final String description;
  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: 260, // Add width
        height: 600, // Add height
        decoration: BoxDecoration(
          color: AppColors.whiteColor.withValues(alpha: .9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
            ),
            AppSpacing.verticalSpaceSmall,
            Expanded(
              flex: 2,
              child: Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14,
                      color: AppColors.blackColor,
                    ),
                textAlign: TextAlign.left,
              ),
            ),
            AppSpacing.verticalSpaceLarge,
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  Text(
                    buttonText,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryColor,
                    size: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
