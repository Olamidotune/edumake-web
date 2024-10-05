import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(30.radius),
        ),
        width: double.infinity,
        height: 70,
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
                  SvgPicture.asset(
                    svgPath,
                    height: svgPath.contains('email') ? 30 : 50,
                  ),
                  Text(
                    text,
                    style:  TextStyle(
                      fontSize: 16.fontSize,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
