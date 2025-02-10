import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConnectionRequestListTile extends StatelessWidget {
  const ConnectionRequestListTile({
    required this.titleName,
    required this.subTitleName,
    required this.date,
    required this.className,
    super.key,
  });
  final String titleName;
  final String subTitleName;

  final String date;
  final String className;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.secondaryColor.withOpacity(.3),
        child: ClipRRect(
          child: SvgPicture.asset(
            'assets/svg/parent.svg',
            height: 40,
          ),
        ),
      ),
      title: Text(
        titleName,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 14.fontSize,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
            ),
      ),
      subtitle: RichText(
        text: TextSpan(
          text: date.isNotEmpty ? AppStrings.wantToContectTo : '',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 10.fontSize,
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w300,
                fontFamily: 'HelveticaNeueRounded',
              ),
          children: [
            TextSpan(
              text: ' $subTitleName',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 10.fontSize,
                    color: date.isNotEmpty
                        ? AppColors.primaryTextColor
                        : AppColors.primaryTextColor,
                    fontWeight: date.isNotEmpty ? FontWeight.bold : null,
                    fontFamily: 'HelveticaNeueRounded',
                  ),
            ),
          ],
        ),
      ),
      trailing: date.isNotEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  className,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 10.fontSize,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  formatLocalTime(date),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 10.fontSize,
                        color: AppColors.primaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            )
          : Text(
              className,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12.fontSize,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
            ),
    );
  }
}

class ConnectionRequestStudentListTile extends StatelessWidget {
  const ConnectionRequestStudentListTile({
    required this.titleName,
    required this.subTitleName,
    required this.date,
    required this.className,
    super.key,
  });
  final String titleName;
  final String subTitleName;

  final String date;
  final String className;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.secondaryColor.withOpacity(.3),
        child: ClipRRect(
          child: SvgPicture.asset(
            'assets/svg/people.svg',
            height: 40,
          ),
        ),
      ),
      title: Text(
        titleName,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 14.fontSize,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
            ),
      ),
      subtitle: RichText(
        text: TextSpan(
          text: date.isNotEmpty ? AppStrings.wantToContectTo : '',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 10.fontSize,
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w300,
                fontFamily: 'HelveticaNeueRounded',
              ),
          children: [
            TextSpan(
              text: ' $subTitleName',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 10.fontSize,
                    color: date.isNotEmpty
                        ? AppColors.primaryTextColor
                        : AppColors.primaryTextColor,
                    fontWeight: date.isNotEmpty ? FontWeight.bold : null,
                    fontFamily: 'HelveticaNeueRounded',
                  ),
            ),
          ],
        ),
      ),
      trailing: date.isNotEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  className,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 10.fontSize,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  date,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 10.fontSize,
                        color: AppColors.primaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            )
          : Text(
              className,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12.fontSize,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
            ),
    );
  }
}
