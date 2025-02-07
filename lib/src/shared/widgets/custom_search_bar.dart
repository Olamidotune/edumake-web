// ignore_for_file: inference_failure_on_function_return_type

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    required this.isHomePage,
    super.key,
    this.hintText,
    this.onSearch,
    this.onSubmitted,
    this.onChanged,
  });

  final String? hintText;
  final void Function()? onSearch;
  final bool isHomePage;
  final void Function(String)? onSubmitted;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isHomePage ? 20 : 0),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: AppColors.greyColor.withOpacity(0.1),
          filled: true,
          hintText: hintText ?? 'Search for students, teachers, classes...',
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 10.fontSize,
                color: AppColors.greyColor,
                fontWeight: FontWeight.w200,
              ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              'assets/svg/search.svg',
              color: AppColors.primaryColor,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: AppColors.whiteColor,
                ),
                onPressed: onSearch,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
