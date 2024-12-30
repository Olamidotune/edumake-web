import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/core/extentions/string_extension.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_snackbar.dart';
import 'package:edumake_frontend/src/shared/widgets/import_csv_button.dart';
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
  final List<int> subjects = [];
  final List<TextEditingController> _subjectController = [
    TextEditingController(),
  ];
  final List<TextEditingController> _noteController = [TextEditingController()];
  final List<TextEditingController> _classesController = [
    TextEditingController(),
  ];
  final List<FocusNode> _subjectNode = [FocusNode()];
  final List<FocusNode> _noteNode = [FocusNode()];
  final List<FocusNode> _classesNode = [FocusNode()];

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
                  ImportCSVButton(
                    onTap: pickAndProcessCsv,
                    name: 'subject',
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
                          subjects.length + 1,
                          (index) => Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSpacing.horizontalSpacing,
                                  vertical: 16.height,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.greyColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    AddSubjectTextFormField(
                                      label: 'Enter Subject/Course',
                                      controller: _subjectController[index],
                                      focusNode: _subjectNode[index],
                                      validator: (p0) {
                                        if (p0!.isEmpty && _csvFile == null) {
                                          return 'Field cannot be empty';
                                        }
                                        return null;
                                      },
                                      suffixIcon: SvgPicture.asset(
                                        'assets/svg/edit.svg',
                                      ),
                                      hintText:
                                          'what is the name of the subject?',
                                    ),
                                    AppSpacing.verticalSpaceHuge,
                                    AddSubjectTextFormField(
                                      label: 'Short Note about the subject',
                                      controller: _noteController[index],
                                      focusNode: _noteNode[index],
                                      validator: (p0) {
                                        if (p0!.isEmpty && _csvFile == null) {
                                          return 'Class name is required';
                                        }
                                        return null;
                                      },
                                      suffixIcon: SvgPicture.asset(
                                        'assets/svg/edit.svg',
                                      ),
                                      hintText:
                                          'Introduce the subject few words',
                                    ),
                                    AppSpacing.verticalSpaceHuge,
                                    AddSubjectTextFormField(
                                      label:
                                          'What classes is this subject associated with? ',
                                      controller: _classesController[index],
                                      focusNode: _classesNode[index],
                                      validator: (p0) {
                                        if (p0!.isEmpty && _csvFile == null) {
                                          return 'Class name is required';
                                        }
                                        return null;
                                      },
                                      suffixIcon: SvgPicture.asset(
                                        'assets/svg/edit.svg',
                                      ),
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
                          SvgPicture.asset('assets/svg/plus1.svg'),
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
      _classesController.add(TextEditingController());
      _noteController.add(TextEditingController());
      _subjectController.add(TextEditingController());
      _classesNode.add(FocusNode());
      _noteNode.add(FocusNode());
      _subjectNode.add(FocusNode());
    });
  }

  @override
  void dispose() {
    for (final controller in _subjectController) {
      controller.dispose();
    }
    for (final controller in _noteController) {
      controller.dispose();
    }
    for (final controller in _classesController) {
      controller.dispose();
    }
    for (final node in _classesNode) {
      node.dispose();
    }
    for (final node in _noteNode) {
      node.dispose();
    }
    for (final node in _subjectNode) {
      node.dispose();
    }
    super.dispose();
  }
}
