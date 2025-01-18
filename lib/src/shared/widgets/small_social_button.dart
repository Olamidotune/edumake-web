import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmallSocialButton extends StatelessWidget {
  const SmallSocialButton({
    required this.icon,
    super.key,
    this.onPressed,
  });
  final String icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: WidgetStateProperty.all<double>(10),
          enableFeedback: true,
          backgroundColor: WidgetStateProperty.all<Color>(
            AppColors.whiteColor,
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: const BorderSide(color: AppColors.whiteColor),
              borderRadius: BorderRadius.circular(20.radius),
            ),
          ),
        ),
        child: SvgPicture.asset(
          'assets/svg/$icon.svg',
        ),
      ),
    );
  }
}
