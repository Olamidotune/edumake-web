import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.text,
    this.onPressed,
    this.buttonColor = AppColors.primaryColor,
    this.textColor = AppColors.whiteColor,
    this.busy = false,
    this.pill = false,
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;
  final Color textColor;
  final bool busy;
  final bool pill;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45.height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(WidgetState.pressed)) {
                return buttonColor.withOpacity(0.5);
              } else if (states.contains(WidgetState.disabled)) {
                return buttonColor.withOpacity(0.5);
              }
              return AppColors.secondaryColor;
            },
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(pill ? 50.radius : 10.radius),
            ),
          ),
        ),
        child: busy
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16.fontSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
              ),
      ),
    );
  }
}
