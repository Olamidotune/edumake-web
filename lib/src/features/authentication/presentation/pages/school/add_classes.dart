import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/core/extentions/string_extension.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AddClassesScreen extends StatefulWidget {
  const AddClassesScreen({super.key});

  static const String routeName = 'add-classes/screen';

  @override
  State<AddClassesScreen> createState() => _AddClassesScreenState();
}

class _AddClassesScreenState extends State<AddClassesScreen> {
  PlatformFile? _csvFile;
  List<List<dynamic>> data = [];

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
                'Edit the preset classes and input all the classes available in your school. You can also import your school class document and ease the stress of manually inputing your school data.',
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
                onTap: pickAndProcessCsv,
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
                        'Import school data (CSV)',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primaryColor.withOpacity(0.7),
                        size: 16.fontSize,
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacing.verticalSpaceSmall,
              RichText(
                text: TextSpan(
                  text: 'Selected file name: ',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'HelveticaNeueRounded',
                        fontSize: 10.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyColor,
                      ),
                  children: [
                    TextSpan(
                      text: _csvFile?.name.capitalize() ?? 'No file selected',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 10.fontSize,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor.withOpacity(0.7),
                          ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpaceMedium,
              Container(
                decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Text('Class 1'),
                  
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> pickAndProcessCsv() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (result == null) return;

    setState(() {
      _csvFile = result.files.first;
    });
  }
}
