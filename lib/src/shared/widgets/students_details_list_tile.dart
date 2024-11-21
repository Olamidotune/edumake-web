
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StudentDetailsListTile extends StatelessWidget {
  const StudentDetailsListTile({
    required this.leading,
    super.key,
    this.onTap,
  });

  final String leading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.width,
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
        leading: Text(
          leading,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14.fontSize,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
              ),
        ),
        trailing: SvgPicture.asset(
          'assets/svg/arrow_right.svg',
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
