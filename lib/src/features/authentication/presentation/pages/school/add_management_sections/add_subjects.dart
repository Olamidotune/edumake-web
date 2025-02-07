// ignore_for_file: unused_local_variable, avoid_void_async, unused_element

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/subject.dart';
import 'package:edumake_frontend/src/features/authentication/api/service/subject_csv_upload.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_data_upload/add_subjects/bloc/add_subjects_bloc.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/import_csv_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class AddSubjectsScreen extends StatefulWidget {
  const AddSubjectsScreen({super.key});

  static const String routeName = 'add-subjects/screen';

  @override
  State<AddSubjectsScreen> createState() => _AddSubjectsScreenState();
}

class _AddSubjectsScreenState extends State<AddSubjectsScreen> {
  PlatformFile? _csvFile;
  bool _isUploading = false;

  final _subjectCsvUpload = CsvUploadService();
  // List to hold the TextEditingController instances
  final List<TextEditingController> _subjectController = [];
  final List<TextEditingController> _noteController = [];
  final List<FocusNode> _subjectNode = [];
  final List<FocusNode> _noteNode = [];
  List<SubjectInput> subjectInputs = [];

  // Function to add a new TextField
  void _addTextFields() {
    setState(() {
      subjectInputs.add(
        SubjectInput(
          nameController: TextEditingController(),
          noteController: TextEditingController(),
        ),
      );
    });
  }

  final formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
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
                        'CSV template saved successfully as "subjects_upload_csv_template.csv". Check your device storage',
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
                  Button(
                    busy: _isUploading,
                    text: _isUploading ? 'Uploading...' : 'Save Subjects',
                    onPressed: _uploadFile,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

//this is to submit for the manual input
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

  Future<void> _pickAndProcessCsv() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (result == null) return;

    setState(() {
      _csvFile = result.files.first;
    });

    ToastService.toast('CSV file selected successfully');
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
      await _subjectCsvUpload.uploadSubjectCsvFile(_csvFile!, context);
    } catch (e) {
      logInfo(e);
    } finally {
      setState(() {
        _isUploading = false;
      });
    }
  }

  Future<String> _loadCSV() async {
    return rootBundle.loadString('assets/csv/subjects_upload_csv_template.csv');
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
      final file = File('${directory.path}/.csv');
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
