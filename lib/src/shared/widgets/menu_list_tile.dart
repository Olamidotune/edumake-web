import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    required this.title,
    required this.icon,
    required this.onTap,
    super.key,
  });
  final String title;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(
        'assets/svg/$icon.svg',
        height: 24,
        width: 24,
        color: AppColors.primaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 14.fontSize,
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryTexColor,
            ),
      ),
      trailing: SvgPicture.asset('assets/svg/arrow_right.svg'),
    );
  }
}
