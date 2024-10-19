import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    required this.title,
    required this.description,
    required this.color,
    this.date,
    super.key,
  });
  final String title;
  final String description;
  final String? date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height < kMinSupportedHeight
          ? 120.height
          : 100.height,
      constraints: BoxConstraints(
        maxWidth: 124.width,
        minWidth: 120.width,
        // maxHeight: 100.height,
      ),
      padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withOpacity(0.4),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(1, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 10.fontSize,
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
  }
}
