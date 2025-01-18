import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';

class TeachersListTileContainer extends StatelessWidget {
  const TeachersListTileContainer({
    required this.teachers,
    required this.subjects,
    super.key,
  });

  final String teachers;
  final String subjects;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.primaryColor.withOpacity(0.1),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: AppColors.whiteColor,
          child: Icon(
            Icons.person,
            color: AppColors.primaryColor,
          ),
        ),
        title: Text(
          teachers,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 15.fontSize,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor,
              ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                subjects,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            AppSpacing.horizontalSpaceSmall,
            Expanded(
              child: Text(
                '[JSS1A,JSS1B,JSS1C,JSS2A,hsfugugdfudgu]',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.goldColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.fontSize,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
