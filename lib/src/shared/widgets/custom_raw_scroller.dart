
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRawScroller extends StatelessWidget {
  const CustomRawScroller({
    required this.scrollController,
    required this.child,
    super.key,
  });

  final ScrollController scrollController;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: scrollController,
      thumbColor: AppColors.primaryColor.withOpacity(0.4),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      padding: const EdgeInsets.only(
        left: 10,
        right: 5,
      ),
      child: child,
    );
  }
}
