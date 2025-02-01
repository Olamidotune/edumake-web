// ignore_for_file: unused_local_variable, avoid_void_async, unused_element

import 'dart:io';

import 'package:csv/csv.dart';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/subject.dart';
import 'package:edumake_frontend/src/features/authentication/api/service/subject_csv_upload.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_data_upload/add_subjects/bloc/add_subjects_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/class_drop_down.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/import_csv_button.dart';
import 'package:edumake_frontend/src/shared/widgets/subject_text_form_field.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shimmer/shimmer.dart';

class AddSubjectsScreen extends StatefulWidget {
  const AddSubjectsScreen({super.key});

  static const String routeName = 'add-subjects/screen';

  @override
  State<AddSubjectsScreen> createState() => _AddSubjectsScreenState();
}

class _AddSubjectsScreenState extends State<AddSubjectsScreen> {
  PlatformFile? _csvFile;
  bool _isUploading = false;

  final _subjectCsvUpload = SubjectCsvUpload();
  // List to hold the TextEditingController instances
  final List<TextEditingController> _subjectController = [];
  final List<TextEditingController> _noteController = [];
  final List<FocusNode> _subjectNode = [];
  final List<FocusNode> _noteNode = [];
  List<SubjectInput> subjectInputs = [];

  // Function to add a new TextField
  void _addTextFields() {
    setState(() {
      subjectInputs.add(SubjectInput(
        nameController: TextEditingController(),
        noteController: TextEditingController(),
      ));
    });
  }

  final formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  bool busy = false;
  bool savedsubjects = false;

  @override
  void initState() {
    super.initState();
    _addTextFields();
    final dio = Dio();
  }

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
                    onTap: _pickAndProcessCsv,
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
                          // _csvFile?.path,
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
                  AppSpacing.verticalSpaceMedium,
                  GestureDetector(
                    onTap: () async {
                      final csvContent = await _loadCSV();
                      await _downloadCSV(csvContent);
                      ToastService.toast(
                        'CSV template saved successfully as "subjects_upload _csv_template.csv". Check your device storage',
                      );
                    },
                    child: Text(
                      'Click to download CSV example template',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 12.fontSize,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                    builder: (context, getSchoolState) =>
                        BlocBuilder<AddSubjectsBloc, AddSubjectsState>(
                      builder: (context, addSubjectState) {
                        if (getSchoolState.fetchClassesStatus ==
                            FormzSubmissionStatus.inProgress) {
                          return ListView.separated(
                            shrinkWrap: true,
                            itemCount: 3, // Number of shimmer placeholders
                            separatorBuilder: (context, index) {
                              return AppSpacing.verticalSpaceSmall;
                            },
                            itemBuilder: (context, index) {
                              return Shimmer.fromColors(
                                baseColor:
                                    Colors.grey[300]!, // Light gray background
                                highlightColor:
                                    Colors.grey[100]!, // Lighter gray shimmer
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Placeholder for an image
                                      Container(
                                        width: 80,
                                        height: 80,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 16,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(height: 8),
                                            Container(
                                              width: double.infinity,
                                              height: 16,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                        if (getSchoolState.classesData == null ||
                            getSchoolState.classesData!.isEmpty) {
                          return const Text('No classes available');
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'or add subjects manually',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
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
                                    subjectInputs.length,
                                    (index) => Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal:
                                                AppSpacing.horizontalSpacing,
                                            vertical: 16.height,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.greyColor
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Column(
                                            children: [
                                              AddSubjectTextFormField(
                                                label: 'Enter Subject/Course',
                                                controller: subjectInputs[index]
                                                    .nameController,
                                                validator: (p0) {
                                                  if (p0!.isEmpty &&
                                                      _csvFile == null) {
                                                    return 'Field cannot be empty';
                                                  }
                                                  return null;
                                                },
                                                suffixIcon: SvgPicture.asset(
                                                  'assets/svg/edit.svg',
                                                ),
                                                hintText:
                                                    'What is the name of the subject?',
                                              ),
                                              AppSpacing.verticalSpaceHuge,
                                              AddSubjectTextFormField(
                                                label:
                                                    'Short Note about the subject',
                                                controller: subjectInputs[index]
                                                    .noteController,
                                                validator: (p0) {
                                                  if (p0!.isEmpty &&
                                                      _csvFile == null) {
                                                    return 'Class name is required';
                                                  }
                                                  return null;
                                                },
                                                suffixIcon: SvgPicture.asset(
                                                  'assets/svg/edit.svg',
                                                ),
                                                hintText:
                                                    'Introduce the subject in a few words',
                                              ),
                                              AppSpacing.verticalSpaceHuge,
                                              ClassDropdown(
                                                items: getSchoolState
                                                    .classesData!
                                                    .map((Datum classData) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: classData.id,
                                                    child: Text(classData.name),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {},
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
                              onTap: _addTextFields,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset('assets/svg/plus1.svg'),
                                    Text(
                                      ' Add more subjects',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
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
                              busy: _isUploading,
                              text: _isUploading
                                  ? 'Uploading...'
                                  : 'Save Subjects',
                              onPressed: _uploadFile,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void submitSubjects() async {
    if (subjectInputs.isEmpty) {
      // Show error message
      return;
    }

    final subjects = subjectInputs.map((input) {
      return Subject(
        name: input.nameController.text,
        note: input.noteController.text,
        classes: ['67994b1070cb1409e17f1c3d'],
      );
    }).toList();

    context
        .read<AddSubjectsBloc>()
        .add(AddSubjectsEvent.submitSubjects(subjects));
  }

  void _printValues() {
    for (var i = 0; i < _subjectController.length; i++) {
      if (i < _noteController.length) {}
    }
  }

  Future<void> _pickAndProcessCsv() async {
    final expectedHeaders = [
      'name',
      'classes',
      'note',
    ];
    try {
      final pickedCSV = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['csv'],
      );
      if (pickedCSV != null) {
        final file = File(pickedCSV.files.single.path!);
        final content = await file.readAsString();
        final rows = const CsvToListConverter().convert(content, eol: '\n');

        if (rows.isEmpty) {
          ToastService.toast(
            'The CSV file is empty',
            ToastType.error,
          );
          return;
        }

        final headers = rows.first
            .map((header) => header.toString().trim().toLowerCase())
            .toList();

        final lowercaseExpectedHeaders =
            expectedHeaders.map((header) => header.toLowerCase()).toList();

        if (headers.length != lowercaseExpectedHeaders.length ||
            !headers.every(lowercaseExpectedHeaders.contains)) {
          ToastService.toast(
            'Invalid CSV file. Please ensure the headers are: ${expectedHeaders.join(", ").toUpperCase()}, or download the CSV template!...',
            ToastType.error,
          );
        } else {
          ToastService.toast('CSV file selected successfully');
        }

        setState(() {
          _csvFile = pickedCSV.files.first;
        });
      }
    } catch (e) {
      ToastService.toast(
        'Error processing CSV file: $e',
        ToastType.error,
      );
    }
  }

  Future<void> _uploadFile() async {
    if (_csvFile == null) {
      ToastService.toast(
        'Please select a CSV file first',
        ToastType.error,
      );
      return;
    }

    setState(() {
      _isUploading = true;
    });

    try {
      await _subjectCsvUpload.uploadSubjectCsvFile(_csvFile!);
    } catch (e) {
      logInfo(e);
    } finally {
      setState(() {
        _isUploading = false;
      });
    }
  }

  Future<String> _loadCSV() async {
    return rootBundle
        .loadString('assets/csv/subjects_upload _csv_template.csv');
  }

  Future<void> _downloadCSV(String csvContent) async {
    Directory? directory;
    try {
      if (Platform.isAndroid) {
        final status = await Permission.storage.request();
        if (!status.isGranted) {
          ToastService.toast(
            'Storage permission is required to save files',
            ToastType.error,
          );
          return;
        }

        await _requestPermissions();
        directory = Directory('/storage/emulated/0/Download');
      } else {
        directory = await getApplicationDocumentsDirectory();
      }
      final file = File('${directory.path}/subjects_upload _csv_template.csv');
      await file.writeAsString(csvContent);
    } catch (e) {
      ToastService.toast(
        'Something went wrong while downloading the file',
        ToastType.error,
      );
    }
  }

  Future<bool> _requestPermissions() async {
    if (Platform.isAndroid) {
      // Request storage permissions
      final status = await Permission.storage.request();
      return status.isGranted;
    }
    return true; // No permissions needed for iOS
  }

  @override
  void dispose() {
    for (final controller in _subjectController) {
      controller.dispose();
    }
    for (final controller in _noteController) {
      controller.dispose();
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

class SubjectInput {
  SubjectInput({
    required this.nameController,
    required this.noteController,
    this.selectedClasses = const [],
  }) {
    nameController.addListener(() {});

    noteController.addListener(() {});
  }
  TextEditingController nameController;
  TextEditingController noteController;
  List<String> selectedClasses;
}

                              //   if (formKey.currentState!.validate() ||
                              //       _csvFile != null) {
                              //     submitSubjects();
                              //     addSubjectState.subjectUploadStatus ==
                              //             FormzSubmissionStatus.success
                              //         ? ToastService.toast(
                              //             'Subjects created successfully',
                              //           )
                              //         : ToastService.toast(
                              //             '${addSubjectState.errorMessage}',
                              //             ToastType.error,
                              //           );
                              //   } else {
                              //     ToastService.toast(
                              //       'Please upload a CSV file or add SUBJECTS manually',
                              //       ToastType.error,
                              //     );
                              //   }
                              // },