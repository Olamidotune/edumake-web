import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/core/extentions/string_extension.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_snackbar.dart';
import 'package:edumake_frontend/src/shared/widgets/subject_text_form_field.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddSubjectsScreen extends StatefulWidget {
  const AddSubjectsScreen({super.key});

  static const String routeName = 'add-subjects/screen';

  @override
  State<AddSubjectsScreen> createState() => _AddSubjectsScreenState();
}

class _AddSubjectsScreenState extends State<AddSubjectsScreen> {
  PlatformFile? _csvFile;
  final List<int> subjects = [1];
  final List<TextEditingController> controllers = [TextEditingController()];
  final List<FocusNode> focusNodes = [FocusNode()];
  final formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  bool busy = false;
  bool savedsubjects = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: RawScrollbar(
        thumbVisibility: true,
        controller: _scrollController,
        thumbColor: AppColors.primaryColor.withOpacity(0.4),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add subjects',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'Add subjects and the classes they are associated with.',
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
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
                          text:
                              _csvFile?.name.capitalize() ?? 'No file selected',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                fontFamily: 'HelveticaNeueRounded',
                                fontSize: 10.fontSize,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor.withOpacity(0.7),
                              ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Text(
                    'or add subjects manually',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceTiny,
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        ...List.generate(
                          subjects.length,
                          (index) => Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSpacing.horizontalSpacing,
                                  vertical: 16.height,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.greyColor.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    AddSubjectTextFormField(
                                      label: 'Enter Subject/Course',
                                      controller: controllers[index],
                                      focusNode: focusNodes[index],
                                      validator: (p0) {
                                        if (p0!.isEmpty && _csvFile == null) {
                                          return 'Field cannot be empty';
                                        }
                                        return null;
                                      },
                                      suffixIcon: SvgPicture.asset(
                                          'assets/svg/edit.svg'),
                                      hintText:
                                          'what is the name of the subject?',
                                    ),
                                    AppSpacing.verticalSpaceHuge,
                                    AddSubjectTextFormField(
                                      label: 'Short Note about the subject',
                                      controller: controllers[index],
                                      focusNode: focusNodes[index],
                                      validator: (p0) {
                                        if (p0!.isEmpty && _csvFile == null) {
                                          return 'Class name is required';
                                        }
                                        return null;
                                      },
                                      suffixIcon: SvgPicture.asset(
                                          'assets/svg/edit.svg'),
                                      hintText:
                                          'Introduce the subject few words',
                                    ),
                                    AppSpacing.verticalSpaceHuge,
                                    AddSubjectTextFormField(
                                      label:
                                          'What classes is this subject associated with? ',
                                      controller: controllers[index],
                                      focusNode: focusNodes[index],
                                      validator: (p0) {
                                        if (p0!.isEmpty && _csvFile == null) {
                                          return 'Class name is required';
                                        }
                                        return null;
                                      },
                                      suffixIcon: SvgPicture.asset(
                                          'assets/svg/edit.svg'),
                                      hintText: 'e.g. JSS1, JSS2, JSS3',
                                    ),
                                    AppSpacing.verticalSpaceTiny,
                                  ],
                                ),
                              ),
                              AppSpacing.verticalSpaceHuge,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: addSubject,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset('assets/svg/plus.svg'),
                          Text(
                            ' Add more subjects',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontFamily: 'HelveticaNeueRounded',
                                      fontSize: 13.fontSize,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpaceMassive,
                  Button(
                    busy: busy,
                    text: 'Save subjects',
                    onPressed: () {
                      if (formKey.currentState!.validate() ||
                          _csvFile != null) {
                        CustomSnackbar.show(
                          context,
                          'subjects saved successfully',
                        );
                        setState(() {
                          busy = !busy;
                        });
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.pop(context, true);
                        });
                        setState(() => busy);
                      } else {
                        CustomSnackbar.show(
                          context,
                          'Please upload a CSV file or add SUBJECTS manually',
                          isError: true,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
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

  void addSubject() {
    setState(() {
      subjects.add(subjects.length + 1);
      controllers.add(TextEditingController());
      focusNodes.add(FocusNode());
    });
  }

  @override
  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }
    for (final node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }
}
