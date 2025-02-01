import 'dart:io';

import 'package:csv/csv.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_data_upload/school_data_upload_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/testing/granted_permission.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/import_csv_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

class AddClassesScreen extends StatefulWidget {
  const AddClassesScreen({super.key});

  static const String routeName = 'add-classes/screen';

  @override
  State<AddClassesScreen> createState() => _AddClassesScreenState();
}

class _AddClassesScreenState extends State<AddClassesScreen> {
  PlatformFile? _csvFile;
  final List<int> classes = [1];
  final List<TextEditingController> controllers = [TextEditingController()];
  final List<FocusNode> focusNodes = [FocusNode()];
  final formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  String csvClasses = '';

  bool busy = false;
  bool savedClasses = false;

  SchoolDataUploadState schoolDataUploadState = const SchoolDataUploadState();

  void _uploadClasses() async {
    final file = File(_csvFile?.path ?? '');
    final rawData = await file.readAsString();
    final csvClassesList = const CsvToListConverter().convert(rawData);

    final classes = csvClassesList
        .skip(1)
        .expand((row) => row)
        .where((element) => element != null && element.toString().isNotEmpty)
        .map((e) => e.toString().trim())
        .toList();
    context.read<SchoolDataUploadBloc>().add(
          SchoolDataUploadEvent.uploadClasses(classes: classes),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchoolDataUploadBloc, SchoolDataUploadState>(
      buildWhen: (previous, current) {
        return _authBuildWhen(context, previous, current);
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const CustomAppBar(),
          body: RawScrollbar(
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
                        'Add Classes',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 24.fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryTextColor,
                                ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        'Edit the preset classes and input all the classes available in your school. You can also import your school class document and ease the stress of manually inputting your school data.',
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
                        name: 'class',
                      ),
                      AppSpacing.verticalSpaceSmall,
                      RichText(
                        text: TextSpan(
                          text: 'Selected file name: ',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 10.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyColor,
                                  ),
                          children: [
                            TextSpan(
                              text: _csvFile?.name.capitalize() ??
                                  'No file selected',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 10.fontSize,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        AppColors.primaryColor.withOpacity(0.7),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      GestureDetector(
                        onTap: () async {
                          final csvContent = await _loadCSV();
                          await _downloadCSV(csvContent);
                          ToastService.toast(
                            'CSV template saved successfully as "edumake_csv_template.csv". Check your device storage',
                          );
                        },
                        child: Text(
                          'Click to download CSV example template',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                  ),
                        ),
                      ),
                      AppSpacing.verticalSpaceLarge,
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(GrantedPermissionsScreen.routeName);
                        },
                        child: Text(
                          'or add classes manually',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            ...List.generate(
                              classes.length,
                              (index) => Column(
                                children: [
                                  CustomTextFormField(
                                    customFilled: true,
                                    fillColor:
                                        AppColors.primaryColor.withOpacity(0.1),
                                    controller: controllers[index],
                                    focusNode: focusNodes[index],
                                    hintText: 'Class ${index + 1}',
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,
                                    editIcon: SvgPicture.asset(
                                      'assets/svg/edit.svg',
                                      height: 10,
                                    ),
                                    onChanged: (classString) {
                                      context.read<SchoolDataUploadBloc>().add(
                                            SchoolDataUploadEvent
                                                .onClassNameChanged(
                                              classString,
                                            ),
                                          );
                                    },
                                    onFieldSubmitted: () {
                                      if (index < classes.length - 1) {
                                        FocusScope.of(context).requestFocus(
                                          focusNodes[index + 1],
                                        );
                                      }
                                    },
                                    validator: (p0) {
                                      if (p0!.isEmpty && _csvFile == null) {
                                        return 'Class name is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      GestureDetector(
                        onTap: _addMoreClass,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset('assets/svg/plus1.svg'),
                              Text(
                                ' Add more classes',
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
                        busy: state.classesUploadStatus ==
                            FormzSubmissionStatus.inProgress,
                        text: 'Save Classes',
                        onPressed: () {
                          if (formKey.currentState!.validate() ||
                              _csvFile != null) {
                            _uploadClasses();
                          } else {
                            ToastService.toast(
                              'Please upload a CSV file or add classes manually',
                              ToastType.error,
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
      },
    );
  }

  bool _authBuildWhen(
    BuildContext context,
    SchoolDataUploadState previous,
    SchoolDataUploadState current,
  ) {
    if (previous.classesUploadStatus == FormzSubmissionStatus.inProgress &&
        current.classesUploadStatus == FormzSubmissionStatus.success) {
      ToastService.toast('Classes saved successfully');
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pop(context, true);
      });
      return false;
    } else if (previous.classesUploadStatus ==
            FormzSubmissionStatus.inProgress &&
        current.classesUploadStatus == FormzSubmissionStatus.failure) {
      ToastService.toast(
        current.errorMessage ?? 'An error occurred',
        ToastType.error,
      );
      return true;
    }
    return true;
  }

  List<String> getAllClassNames() {
    return controllers.map((controller) => controller.text.trim()).toList();
  }

  Future<void> _pickAndProcessCsv() async {
    final expectedHeaders = [
      'Class Name',
    ];

    final pickedCSV = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (pickedCSV != null) {
      final file = File(pickedCSV.files.single.path!);
      final content = await file.readAsString();
      final displayedContent = const CsvToListConverter().convert(content);
      final headers = displayedContent.first;

      final headersMatch = headers.length == expectedHeaders.length &&
          List.generate(headers.length, (i) => headers[i] == expectedHeaders[i])
              .every((match) => match);

      if (!headersMatch) {
        ToastService.toast(
          'Invalid CSV file. Please ensure the headers are: ${expectedHeaders.join(", ").toUpperCase()}, or download the CSV template!...',
          ToastType.error,
        );
        return;
      }
      // Proceed if headers are correct
      setState(() {
        _csvFile = pickedCSV.files.first;
      });
      ToastService.toast('CSV file selected successfully');
    }
  }

  Future<String> _loadCSV() async {
    return rootBundle.loadString('assets/csv/edumake_csv_template.csv');
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
      final file = File('${directory.path}/edumake_csv_template.csv');
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

  // Share the CSV file (optional)
  Future<void> shareCSV(String csvContent) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/template.csv');
    await file.writeAsString(csvContent);
    await Share.shareXFiles(
      [XFile(file.path)],
      text: 'Here is your CSV template!',
    );
  }

  void _addMoreClass() {
    setState(() {
      classes.add(classes.length + 1);
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
