import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBigTextFormField extends StatelessWidget {
  const CustomBigTextFormField({
    required this.header,
    required this.controller,
    super.key,
    this.validator,
  });
  final String header;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            header,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: 'HelveticaNeueRounded',
                  fontSize: 13.fontSize,
                  fontWeight: FontWeight.w300,
                  color: AppColors.secondaryTexColor,
                ),
          ),
        ),
        AppSpacing.verticalSpaceSmall,
        TextFormField(
          maxLines: 10,
          cursorColor: AppColors.primaryColor,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            suffixIcon: SvgPicture.asset(
              'assets/svg/edit.svg',
              color: AppColors.primaryColor,
            ),
            suffixIconConstraints: const BoxConstraints(
              maxHeight: 20,
              maxWidth: 20,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppSpacing.horizontalSpacingSmall,
              vertical: AppSpacing.verticalValueSmall,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            fillColor: AppColors.primaryColor.withOpacity(.1),
            filled: true,
          ),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'HelveticaNeueRounded',
                fontSize: 13.fontSize,
                fontWeight: FontWeight.w300,
                color: AppColors.secondaryTexColor,
              ),
        ),
      ],
    );
  }
}
