import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

class SchoolDropDownFormWidget extends StatelessWidget {
  const SchoolDropDownFormWidget({
    required this.hintText,
    super.key,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(AppColors.primaryColor),
          thickness: MaterialStateProperty.all(6),
          radius: const Radius.circular(8),
          thumbVisibility: MaterialStateProperty.all(
            true,
          ),
        ),
      ),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: true,
          physics: const BouncingScrollPhysics(),
        ),
        child: DropdownButtonFormField<String>(
          isExpanded: true,
          itemHeight: 64,
          menuMaxHeight: 200,
          hint: Text(hintText),
          validator: (value) {
            if (value == null) {
              return AppStrings.fieldIsRequired;
            }
            return null;
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.greyColor.withOpacity(0.1),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          items: List.generate(15, (index) {
            return DropdownMenuItem(
              value: 'Item ${index + 1}',
              child: Text('Item ${index + 1}'),
            );
          }),
          onChanged: print,
        ),
      ),
    );
  }
}
