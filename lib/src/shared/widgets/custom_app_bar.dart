import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.subtitle,
  });

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Image.asset('assets/png/back_button.png'),
      ),
      title: subtitle == null
          ? Text(title ?? '')
          : Column(
              children: [
                Text(
                  title ?? '',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.fontSize,
                      ),
                ),
                Text(
                  subtitle ?? '',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.secondaryTexColor,
                        fontSize: 12.fontSize,
                      ),
                ),
              ],
            ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
