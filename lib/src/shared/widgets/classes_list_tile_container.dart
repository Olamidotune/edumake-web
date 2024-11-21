import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';

class ClassesListTileContainer extends StatelessWidget {
  const ClassesListTileContainer({
    required this.classes,
    required this.isProfilePictureEnabled,
    this.studentCount,
    super.key,
    this.onTap,
    this.subTitle,
  });

  final String classes;
  final String? studentCount;
  final void Function()? onTap;
  final bool isProfilePictureEnabled ;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor.withOpacity(0.1),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            leading: isProfilePictureEnabled
                ? CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Text(
                      classes.substring(0, 1),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14.fontSize,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteColor,
                          ),
                    ),
                  )
                : null,
            title: Text(
              classes,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                  ),
            ),
            subtitle: subTitle != null
                ? Text(
                    subTitle!,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                        ),
                  )
                : null,
            trailing: Text(
              studentCount ?? '',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
