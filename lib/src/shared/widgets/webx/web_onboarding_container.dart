import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WebOnboardingContainer extends StatelessWidget {
  const WebOnboardingContainer({
    required this.title,
    required this.image,
    super.key,
    this.onTap,
  });
  final String title;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(
          AppSpacing.horizontalSpacing,
        ),
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/svg/$image.svg',
              height: 30.width,
            ),
            AppSpacing.verticalSpaceMedium,
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
