import 'dart:io';

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/authentication/api/service/subject_csv_upload.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_data_upload/school_data_upload_bloc.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/import_csv_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AddClassesScreen extends StatefulWidget {
  const AddClassesScreen({super.key});

  static const String routeName = 'add-classes/screen';

  @override
  State<AddClassesScreen> createState() => _AddClassesScreenState();
}

class _AddClassesScreenState extends State<AddClassesScreen> {
  PlatformFile? _csvFile;
  bool _isUploading = false;
  final _subjectCsvUpload = CsvUploadService();
  final List<int> classes = [1];
  final List<TextEditingController> controllers = [TextEditingController()];
  final List<FocusNode> focusNodes = [FocusNode()];
  final formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  String csvClasses = '';

  bool busy = false;
  bool savedClasses = false;

  SchoolDataUploadState schoolDataUploadState = const SchoolDataUploadState();

  @override
  Widget build(BuildContext context) {
    final isDesktop = ScreenUtil().screenWidth > kMedDesktopWidth;
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
                    horizontal:
                        isDesktop ? 100.width : AppSpacing.horizontalSpacing,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Classes',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: isDesktop ? 32 : 24.fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryTextColor,
                                ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        'Edit the preset classes and input all the classes available in your school. You can also import your school class document and ease the stress of manually inputting your school data.',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'HelveticaNeueRounded',
                              fontSize: isDesktop ? 20 : 12.fontSize,
                              fontWeight: FontWeight.w300,
                              color: AppColors.primaryTextColor,
                            ),
                        textAlign: TextAlign.justify,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      ImportCSVButton(
                        isWeb: true,
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
                                    fontSize: isDesktop ? 12 : 10.fontSize,
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
                                    fontSize: isDesktop ? 12 : 10.fontSize,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        AppColors.primaryColor.withOpacity(0.7),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      RichText(
                        text: TextSpan(
                          text: 'Sample CSV format: ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: isDesktop ? 24 : 12.fontSize,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryColor),
                          children: [
                            TextSpan(
                              text: 'Use this file as a reference.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: isDesktop ? 24 : 12.fontSize,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor
                                        .withValues(alpha: .7),
                                  ),
                            ),
                            TextSpan(
                              text: ' Click here ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontFamily: 'HelveticaNeueRounded',
                                      fontSize: isDesktop ? 24 : 12.fontSize,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.blackColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  _launchCSVLink();
                                },
                            ),
                            TextSpan(
                              text:
                                  'to view Edumake CSV file.You can either edit this file or follow the file content format',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: isDesktop ? 24 : 12.fontSize,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor
                                        .withValues(alpha: .7),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      AppSpacing.verticalSpaceLarge,

                      // Form(
                      //   key: formKey,
                      //   child: Column(
                      //     children: [
                      //       ...List.generate(
                      //         classes.length,
                      //         (index) => Column(
                      //           children: [
                      //             CustomTextFormField(
                      //               customFilled: true,
                      //               fillColor:
                      //                   AppColors.primaryColor.withOpacity(0.1),
                      //               controller: controllers[index],
                      //               focusNode: focusNodes[index],
                      //               hintText: 'Class ${index + 1}',
                      //               textInputAction: TextInputAction.next,
                      //               keyboardType: TextInputType.text,
                      //               editIcon: SvgPicture.asset(
                      //                 'assets/svg/edit.svg',
                      //                 height: 10,
                      //               ),
                      //               onChanged: (classString) {
                      //                 context.read<SchoolDataUploadBloc>().add(
                      //                       SchoolDataUploadEvent
                      //                           .onClassNameChanged(
                      //                         classString,
                      //                       ),
                      //                     );
                      //               },
                      //               onFieldSubmitted: () {
                      //                 if (index < classes.length - 1) {
                      //                   FocusScope.of(context).requestFocus(
                      //                     focusNodes[index + 1],
                      //                   );
                      //                 }
                      //               },
                      //               validator: (p0) {
                      //                 if (p0!.isEmpty && _csvFile == null) {
                      //                   return 'Class name is required';
                      //                 }
                      //                 return null;
                      //               },
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // AppSpacing.verticalSpaceSmall,
                      // GestureDetector(
                      //   onTap: _addMoreClass,
                      //   child: Align(
                      //     alignment: Alignment.bottomLeft,
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.end,
                      //       children: [
                      //         SvgPicture.asset('assets/svg/plus1.svg'),
                      //         Text(
                      //           ' Add more classes',
                      //           style: Theme.of(context)
                      //               .textTheme
                      //               .bodyLarge!
                      //               .copyWith(
                      //                 fontFamily: 'HelveticaNeueRounded',
                      //                 fontSize: 13.fontSize,
                      //                 fontWeight: FontWeight.w500,
                      //                 color: AppColors.primaryColor,
                      //               ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      AppSpacing.verticalSpaceMassive,
                      Button(
                        isWeb: true,
                        busy: _isUploading,
                        text: _isUploading ? 'Uploading...' : 'Save Classes',
                        onPressed: _uploadFile,
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

  void _launchCSVLink() async {
    const csvLink =
        'https://drive.google.com/file/d/1QZZCMsn_2uAnkoP174I9AyrdCmNxS7CH/view?usp=drivesdk';
    final uri = Uri.parse(csvLink);
    if (await canLaunchUrl(uri)) {
      try {
        await launchUrl(uri);
        return;
      } catch (e) {
        ToastService.toast('Could not launch Reset PIN URL.', ToastType.error);
      }
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
      await _subjectCsvUpload.uploadClassCSVFile(_csvFile!, context);
    } catch (e) {
      logInfo(e);
    } finally {
      setState(() {
        _isUploading = false;
      });
    }
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

  // void _addMoreClass() {
  //   setState(() {
  //     classes.add(classes.length + 1);
  //     controllers.add(TextEditingController());
  //     focusNodes.add(FocusNode());
  //   });
  // }

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
