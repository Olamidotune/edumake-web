import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddClassesScreen extends StatelessWidget {
  const AddClassesScreen({super.key});

  static const String routeName = 'add-classes/screen';

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: AppSpacing.horizontalSpacing),
          child: CircleAvatar(
            radius: 40.width,
            backgroundColor: AppColors.greyColor,
            child: Text(
              'DD',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 12.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryTextColor,
                  ),
            ),
          ),
        ),
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: l10n.hello,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: 'HelveticaNeueRounded',
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryTextColor,
                ),
            children: [
              TextSpan(
                text: ' David Doe,',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'HelveticaNeueRounded',
                      fontSize: 16.fontSize,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: Column(
            children: [
              Text(
                l10n.beAdvisedToAddTheseSegments,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
                textAlign: TextAlign.justify,
              ),
              AppSpacing.verticalSpaceMedium,
              Container(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor.withOpacity(0.5),
                ),
                child: Text("data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
