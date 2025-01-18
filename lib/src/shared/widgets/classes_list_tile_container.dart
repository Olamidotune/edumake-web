import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';

class ClassesListTileContainer extends StatelessWidget {
  const ClassesListTileContainer({
    required this.isProfilePictureEnabled,
    required this.title,
    super.key,
    this.onTap,
    this.subTitle,
    this.trailing,
  });

  final String title;
  final String? trailing;
  final void Function()? onTap;
  final bool isProfilePictureEnabled;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.width,
        vertical: 3.height,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        leading: isProfilePictureEnabled
            ? CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                child: Text(
                  title.substring(0, 1),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteColor,
                      ),
                ),
              )
            : null,
        title: Text(
          title,
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
                      fontSize: 10.fontSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor,
                    ),
              )
            : null,
        trailing: Text(
          trailing ?? '',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14.fontSize,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
        ),
      ),
    );
  }
}
