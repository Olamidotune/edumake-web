import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

class SchoolDropDownFormWidget extends StatelessWidget {
  const SchoolDropDownFormWidget({
    required this.hintText,
    required this.onChanged,
    this.selectedValue,
    super.key,
  });

  final String hintText;
  final void Function(String?) onChanged;
  final String? selectedValue;

  // Define the items as a static list for reusability
  static const List<Map<String, String>> _dropdownItems = [
    {'value': '5-20', 'label': '5-20'},
    {'value': '21-50', 'label': '21-50'},
    {'value': '51-100', 'label': '51-100'},
    {'value': '101-200', 'label': '101-200'},
    {'value': '201-500', 'label': '201-500'},
    {'value': 'Above 500', 'label': 'Above 500'},
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(AppColors.primaryColor),
          thickness: MaterialStateProperty.all(6),
          radius: const Radius.circular(8),
          thumbVisibility: MaterialStateProperty.all(true),
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
          value: selectedValue,
          hint: Text(hintText),
          validator: (value) {
            if (value == null || value.isEmpty) {
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
          items: _dropdownItems.map((item) {
            return DropdownMenuItem<String>(
              value: item['value'],
              child: Text(item['label']!),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class SchoolTypeDropDownFormWidget extends StatelessWidget {
  const SchoolTypeDropDownFormWidget({
    required this.hintText,
    required this.onChanged,
    this.selectedValue,
    super.key,
  });

  final String hintText;
  final void Function(String?) onChanged;
  final String? selectedValue;

  // Define the items as a static list for reusability
  static const List<Map<String, String>> _dropdownItems = [
    {'value': 'Nursery School', 'label': 'Nursery School'},
    {'value': 'Primary School', 'label': 'Primary School'},
    {'value': 'Secondary School', 'label': 'Secondary School'},
    {'value': 'Tertiary School', 'label': 'Tertiary School'},
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(AppColors.primaryColor),
          thickness: MaterialStateProperty.all(6),
          radius: const Radius.circular(8),
          thumbVisibility: MaterialStateProperty.all(true),
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
          value: selectedValue,
          hint: Text(hintText),
          validator: (value) {
            if (value == null || value.isEmpty) {
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
          items: _dropdownItems.map((item) {
            return DropdownMenuItem<String>(
              value: item['value'],
              child: Text(item['label']!),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
