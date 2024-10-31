import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddClassesContainer extends StatelessWidget {
  const AddClassesContainer({
    required this.count,
    super.key,
  });
  final int count;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50.height,
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: AppColors.secondaryColor.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Class $count',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 14.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor,
                  ),
            ),
            SvgPicture.asset('assets/svg/edit.svg'),
          ],
        ),
      ),
    );
  }
}
