import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.controller,
    required this.focusNode,
    required this.title,
    required this.hintText,
    required this.keyboardType,
    super.key,
    this.obscureText = false,
    this.isPassword = false,
    this.isFilled = true,
    this.validator,
    this.textInputAction,
    this.onSuffixIconPressed,
    this.prefixIcon,
    this.onFieldSubmitted,
    this.maxLength,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? prefixIcon;
  final bool isPassword;
  final bool isFilled;
  final int? maxLength;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final void Function()? onSuffixIconPressed;
  final void Function()? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ),
        AppSpacing.verticalSpaceSmall,
        TextFormField(
          maxLength: maxLength,
          onEditingComplete: onFieldSubmitted,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14.fontSize,
                color: AppColors.primaryTextColor,
              ),
          focusNode: focusNode,
          textInputAction: textInputAction,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            fillColor: AppColors.greyColor.withOpacity(0.1),
            filled: isFilled,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.fontSize,
                  color: AppColors.greyColor,
                ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset(
                'assets/svg/$prefixIcon.svg',
                color: AppColors.greyColor.withOpacity(1),
              ),
            ),
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.greyColor,
                    ),
                    onPressed: onSuffixIconPressed,
                  )
                : null,
          ),
          obscureText: obscureText,
          validator: validator,
        ),
      ],
    );
  }
}
