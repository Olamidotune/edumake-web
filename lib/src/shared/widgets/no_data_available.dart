import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    final isDesktop = ScreenUtil().screenWidth > kMedDesktopWidth;
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
              'Oops!...No Data Available',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: isDesktop ? 18 : 18.fontSize,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryTextColor,
                  ),
            ),
            AppSpacing.verticalSpaceSmall,
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: isDesktop ? 15 : 13.fontSize,
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
