import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class AddCsvFileScreen extends StatefulWidget {
  const AddCsvFileScreen({super.key});

  static const String routeName = 'add-csv/screen';

  @override
  State<AddCsvFileScreen> createState() => _AddCsvFileScreenState();
}

class _AddCsvFileScreenState extends State<AddCsvFileScreen> {
  bool busy = false;
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
              AppSpacing.verticalSpaceMassive,
              AddCsvContainer(
                name: 'Classes',
                onTap: () {

                },
              ),
              AppSpacing.verticalSpaceMedium,
              AddCsvContainer(
                name: 'Classes',
                onTap: () {},
              ),
              AppSpacing.verticalSpaceMedium,
              AddCsvContainer(
                name: 'Classes',
                onTap: () {},
              ),
              AppSpacing.verticalSpaceMedium,
              AddCsvContainer(
                name: 'Classes',
                onTap: () {},
              ),
              AppSpacing.verticalSpaceMassive,
              Button(
                busy: busy,
                text: 'Setup Done',
                // onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddCsvContainer extends StatelessWidget {
  const AddCsvContainer({
    required this.name,
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70.height,
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: AppColors.secondaryColor.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/plus.svg'),
            AppSpacing.horizontalSpaceSmall,
            Text(
              'Add $name',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
