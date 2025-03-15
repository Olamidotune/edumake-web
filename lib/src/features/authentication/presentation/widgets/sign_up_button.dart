import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    required this.text,
    required this.svgPath,
    required this.onPressed,
    this.busy = false,
    super.key,
  });
  final String text;
  final String svgPath;
  final VoidCallback onPressed;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: AppSpacing.horizontalSpacingSmall),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(60.radius),
        ),
        width: double.infinity,
        height: 70.height,
        child: busy
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Row(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      svgPath,
                      height: svgPath.contains('email') ? 30.height : 50.height,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 16.fontSize,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
