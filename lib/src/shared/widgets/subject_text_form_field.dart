
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';

class AddSubjectTextFormField extends StatelessWidget {
  const AddSubjectTextFormField({
    required this.label,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    required this.suffixIcon,
    super.key,
    this.validator,
  });

  final String label;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final Widget suffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'HelveticaNeueRounded',
                fontSize: 12.fontSize,
                fontWeight: FontWeight.w300,
                color: AppColors.primaryTextColor,
              ),
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: controller,
          focusNode: focusNode,
          textInputAction: TextInputAction.next,
          validator: validator,
          cursorColor: AppColors.primaryColor,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(13),
              child: suffixIcon,
            ),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 10.fontSize,
                  color: AppColors.primaryTextColor,
                ),
          ),
        ),
      ],
    );
  }
}
