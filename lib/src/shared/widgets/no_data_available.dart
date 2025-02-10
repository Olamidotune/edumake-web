import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

class NoDataAvailable extends StatelessWidget {
  const NoDataAvailable({
    required this.message,
    required this.height,
    super.key,
  });
  final String message;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: AppSpacing.verticalValueSpaceLarge * height,
            ),
            Image.asset(
              'assets/png/empty.png',
              height: 150,
            ),
            Text(
              'No Data Available',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 20, // Assuming 20 is a valid font size
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryTextColor,
                  ),
            ),
            AppSpacing.verticalSpaceSmall,
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14, // Assuming 14 is a valid font size
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryTexColor,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
