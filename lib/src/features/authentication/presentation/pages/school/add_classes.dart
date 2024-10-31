import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class AddClassesScreen extends StatefulWidget {
  const AddClassesScreen({super.key});

  static const String routeName = 'add-classes/screen';

  @override
  State<AddClassesScreen> createState() => _AddClassesScreenState();
}

class _AddClassesScreenState extends State<AddClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Classes',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontFamily: 'HelveticaNeueRounded',
                      fontSize: 24.fontSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryTextColor,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              Text(
                'Edit the preset classes and input all the classes available in your school.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'HelveticaNeueRounded',
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w300,
                      color: AppColors.primaryTextColor,
                    ),
                textAlign: TextAlign.justify,
              ),
              AppSpacing.verticalSpaceMedium,
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.primaryColor),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadowColor,
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Import school data (csv)',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primaryColor.withOpacity(0.7),
                        size: 16.fontSize,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
