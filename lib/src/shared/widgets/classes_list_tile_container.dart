import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';


class ClassesListTileContainer extends StatelessWidget {
  const ClassesListTileContainer({
    required this.classes,
    required this.studentCount,
    super.key,
  });

  final String classes;
  final String studentCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          title: Text(
            classes,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.fontSize,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor,
                ),
          ),
          trailing: Text(
            studentCount,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.fontSize,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
          ),
        ),
      ),
    );
  }
}
