import 'dart:io';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/core/extensions/string_extension.dart';
import 'package:edumake_frontend/src/features/authentication/api/service/subject_csv_upload.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_snackbar.dart';
import 'package:edumake_frontend/src/shared/widgets/import_csv_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class AddStudentsScreen extends StatefulWidget {
  const AddStudentsScreen({super.key});

  static const String routeName = 'add-students/screen';

  @override
  State<AddStudentsScreen> createState() => _AddStudentsScreenState();
}

class _AddStudentsScreenState extends State<AddStudentsScreen> {
  final List<String> classes = ['Class 1', 'Class 2', 'Class 3'];

  PlatformFile? _csvFile;
  bool _isUploading = false;

  final _csvUploadService = CsvUploadService();
  final List<File?> _imageFiles = [];
  final List<int> students = [];
  final List<TextEditingController> controllers = [TextEditingController()];
  final List<FocusNode> focusNodes = [FocusNode()];
  final formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  bool busy = false;
  bool savedstudents = false;
  String? selectedClass;
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDesktop = ScreenUtil().screenWidth > kMedDesktopWidth;
    return Scaffold(
      //name,class (the class this student is in)
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
                horizontal:
                    isDesktop ? 100.width : AppSpacing.horizontalSpacing,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Students',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: isDesktop ? 32 : 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'Add students and select their classes.',
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
                    name: 'Student',
                  ),
                  AppSpacing.verticalSpaceSmall,
                  RichText(
                    text: TextSpan(
                      text: 'Selected file name: ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: isDesktop ? 12 : 10.fontSize,
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
                                fontSize: isDesktop ? 12 : 10.fontSize,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor.withOpacity(0.7),
                              ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  RichText(
                    text: TextSpan(
                      text: 'Sample CSV format: ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: isDesktop ? 24 : 12.fontSize,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor),
                      children: [
                        TextSpan(
                          text: 'Use this file as a reference.',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                  AppSpacing.verticalSpaceMassive,
                  Button(
                    isWeb: true,
                    busy: _isUploading,
                    text: _isUploading ? 'Uploading...' : 'Save Students',
                    onPressed: _uploadFile,
                  ),
                ],
              ),
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       'Add students',
              //       style: Theme.of(context).textTheme.titleMedium!.copyWith(
              //             fontFamily: 'HelveticaNeueRounded',
              //             fontSize: 24.fontSize,
              //             fontWeight: FontWeight.w400,
              //             color: AppColors.primaryTextColor,
              //           ),
              //     ),
              //     AppSpacing.verticalSpaceSmall,
              //     Text(
              //       'Add students and select their classes.',
              //       style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              //             fontFamily: 'HelveticaNeueRounded',
              //             fontSize: 12.fontSize,
              //             fontWeight: FontWeight.w300,
              //             color: AppColors.primaryTextColor,
              //           ),
              //       textAlign: TextAlign.justify,
              //     ),
              //     AppSpacing.verticalSpaceMedium,
              //     ImportCSVButton(
              //       isWeb: true,
              //       onTap: _pickAndProcessCsv,
              //       name: 'student',
              //     ),
              //     AppSpacing.verticalSpaceSmall,
              //     RichText(
              //       text: TextSpan(
              //         text: 'Selected file name: ',
              //         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              //               fontFamily: 'HelveticaNeueRounded',
              //               fontSize: 10.fontSize,
              //               fontWeight: FontWeight.w400,
              //               color: AppColors.greyColor,
              //             ),
              //         children: [
              //           TextSpan(
              //             text:
              //                 _csvFile?.name.capitalize() ?? 'No file selected',
              //             style: Theme.of(context)
              //                 .textTheme
              //                 .bodyMedium!
              //                 .copyWith(
              //                   fontFamily: 'HelveticaNeueRounded',
              //                   fontSize: 10.fontSize,
              //                   fontWeight: FontWeight.w700,
              //                   color: AppColors.primaryColor.withOpacity(0.7),
              //                 ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     AppSpacing.verticalSpaceMedium,
              //     RichText(
              //       text: TextSpan(
              //         text: 'Sample CSV format: ',
              //         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              //             fontFamily: 'HelveticaNeueRounded',
              //             fontSize: 12.fontSize,
              //             fontWeight: FontWeight.w600,
              //             color: AppColors.primaryColor),
              //         children: [
              //           TextSpan(
              //             text: 'Use this file as a reference.',
              //             style:
              //                 Theme.of(context).textTheme.bodyMedium!.copyWith(
              //                       fontFamily: 'HelveticaNeueRounded',
              //                       fontSize: 12.fontSize,
              //                       fontWeight: FontWeight.w600,
              //                       color: AppColors.primaryColor
              //                           .withValues(alpha: .7),
              //                     ),
              //           ),
              //           TextSpan(
              //             text: ' Click here ',
              //             style: Theme.of(context)
              //                 .textTheme
              //                 .bodyMedium!
              //                 .copyWith(
              //                     fontFamily: 'HelveticaNeueRounded',
              //                     fontSize: 12.fontSize,
              //                     fontWeight: FontWeight.bold,
              //                     color: AppColors.blackColor),
              //             recognizer: TapGestureRecognizer()
              //               ..onTap = () async {
              //                 _launchCSVLink();
              //               },
              //           ),
              //           TextSpan(
              //             text:
              //                 'to view Edumake CSV file.You can either edit this file or follow the file content format',
              //             style:
              //                 Theme.of(context).textTheme.bodyMedium!.copyWith(
              //                       fontFamily: 'HelveticaNeueRounded',
              //                       fontSize: 12.fontSize,
              //                       fontWeight: FontWeight.w600,
              //                       color: AppColors.primaryColor
              //                           .withValues(alpha: .7),
              //                     ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     AppSpacing.verticalSpaceLarge,
              //     Button(
              //       busy: _isUploading,
              //       text: 'Save students',
              //       onPressed: _uploadFile,
              //     ),
              //   ],
              // ),
            ),
          ),
        ),
      ),
    );
  }

  void _launchCSVLink() async {
    const csvLink =
        'https://drive.google.com/file/d/1KFLZP6MI3P0F_vBCde2zLbtzDEMHjUA1/view?usp=drivesdk';
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
      await _csvUploadService.uploadStudentCsvFile(_csvFile!, context);
    } catch (e) {
      logInfo(e);
    } finally {
      setState(() {
        _isUploading = false;
      });
    }
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

  Future<void> insertImage(int index) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image, // Allow only images
      );

      if (result != null && result.files.single.path != null) {
        setState(() {
          // Ensure that the list has enough length before assigning the image
          if (index < _imageFiles.length) {
            _imageFiles[index] = File(result.files.single.path!);
          }
        });
      }
    } catch (e) {
      CustomSnackbar.show(
        context,
        'An error occurred while selecting image',
        isError: true,
      );
      logInfo(e.toString());
    }
  }

  void addMoreStudents() {
    setState(() {
      students.add(students.length + 1);
      controllers.add(TextEditingController());
      focusNodes.add(FocusNode());
      _imageFiles.add(null);
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




  // Text(
                  //   'or add students manually',
                  //   style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  //         fontFamily: 'HelveticaNeueRounded',
                  //         fontSize: 12.fontSize,
                  //         fontWeight: FontWeight.w300,
                  //         color: AppColors.primaryTextColor,
                  //       ),
                  // ),
                  // AppSpacing.verticalSpaceTiny,
                  // Form(
                  //   key: formKey,
                  //   child: Column(
                  //     children: [
                  //       ListView.builder(
                  //         shrinkWrap: true,
                  //         physics: const NeverScrollableScrollPhysics(),
                  //         itemCount: students.length + 1,
                  //         itemBuilder: (context, index) {
                  //           if (_imageFiles.length <= index) {
                  //             _imageFiles.add(null);
                  //           }
                  //           return Column(
                  //             children: [
                  //               Container(
                  //                 padding: EdgeInsets.symmetric(
                  //                   horizontal: AppSpacing.horizontalSpacing,
                  //                 ),
                  //                 decoration: BoxDecoration(
                  //                   color: AppColors.greyColor.withOpacity(0.1),
                  //                   borderRadius: BorderRadius.circular(15),
                  //                 ),
                  //                 child: Row(
                  //                   children: [
                  //                     BlocBuilder<PermissionsBloc,
                  //                         PermissionsState>(
                  //                       builder: (context, state) {
                  //                         return GestureDetector(
                  //                           onTap: () {
                  //                             if (!state
                  //                                 .isPhotoLibraryEnabled) {
                  //                               context
                  //                                   .read<PermissionsBloc>()
                  //                                   .add(
                  //                                     const PermissionsEvent
                  //                                         .requestPhotoLibraryAccess(),
                  //                                   );
                  //                             } else {
                  //                               insertImage(index);
                  //                             }
                  //                           },
                  //                           child: CircleAvatar(
                  //                             radius: 40,
                  //                             backgroundColor: _imageFiles[
                  //                                         students.length] ==
                  //                                     null
                  //                                 ? Colors.grey.withOpacity(0.2)
                  //                                 : Colors.transparent,
                  //                             child: _imageFiles[index] != null
                  //                                 ? ClipOval(
                  //                                     child: Image.file(
                  //                                       File(
                  //                                         _imageFiles[index]!
                  //                                             .path,
                  //                                       ),
                  //                                       width: 80,
                  //                                       height: 80,
                  //                                       fit: BoxFit.cover,
                  //                                     ),
                  //                                   )
                  //                                 : Column(
                  //                                     mainAxisAlignment:
                  //                                         MainAxisAlignment
                  //                                             .center,
                  //                                     children: [
                  //                                       SvgPicture.asset(
                  //                                         'assets/svg/camera.svg',
                  //                                         color: AppColors
                  //                                             .blackColor
                  //                                             .withOpacity(0.6),
                  //                                       ),
                  //                                       Text(
                  //                                         'Insert image',
                  //                                         style:
                  //                                             Theme.of(context)
                  //                                                 .textTheme
                  //                                                 .bodyMedium!
                  //                                                 .copyWith(
                  //                                                   fontFamily:
                  //                                                       'HelveticaNeueRounded',
                  //                                                   fontSize: 8
                  //                                                       .fontSize,
                  //                                                   fontWeight:
                  //                                                       FontWeight
                  //                                                           .w300,
                  //                                                   color: AppColors
                  //                                                       .primaryTextColor,
                  //                                                 ),
                  //                                       ),
                  //                                     ],
                  //                                   ),
                  //                           ),
                  //                         );
                  //                       },
                  //                     ),
                  //                     AppSpacing.horizontalSpaceMedium,
                  //                     Expanded(
                  //                       child: Column(
                  //                         children: [
                  //                           AddSubjectTextFormField(
                  //                             label: '',
                  //                             controller: controllers[index],
                  //                             focusNode: focusNodes[index],
                  //                             validator: (p0) {
                  //                               if (p0!.isEmpty &&
                  //                                   _csvFile == null) {
                  //                                 return 'Field cannot be empty';
                  //                               }
                  //                               return null;
                  //                             },
                  //                             suffixIcon: SvgPicture.asset(
                  //                               'assets/svg/edit.svg',
                  //                             ),
                  //                             hintText: 'Name of student',
                  //                           ),
                  //                           AppSpacing.verticalSpaceMedium,
                  //                           DropdownButtonFormField(
                  //                             isExpanded: true,
                  //                             focusColor:
                  //                                 AppColors.primaryColor,
                  //                             itemHeight: 64,
                  //                             menuMaxHeight: 200,
                  //                             hint: Text(
                  //                               selectedClass ??
                  //                                   "Select student's class",
                  //                               style: Theme.of(context)
                  //                                   .textTheme
                  //                                   .bodyMedium!
                  //                                   .copyWith(
                  //                                     fontFamily:
                  //                                         'HelveticaNeueRounded',
                  //                                     fontSize: 10.fontSize,
                  //                                     fontWeight:
                  //                                         FontWeight.w300,
                  //                                     color: AppColors
                  //                                         .primaryTextColor
                  //                                         .withOpacity(0.5),
                  //                                   ),
                  //                             ),
                  //                             validator: (value) {
                  //                               if (value == null &&
                  //                                   _csvFile == null) {
                  //                                 return 'Field is required';
                  //                               }
                  //                               return null;
                  //                             },
                  //                             items:
                  //                                 classes.map((String value) {
                  //                               return DropdownMenuItem<String>(
                  //                                 value: value,
                  //                                 child: Text(
                  //                                   value,
                  //                                   style: Theme.of(context)
                  //                                       .textTheme
                  //                                       .bodyMedium!
                  //                                       .copyWith(
                  //                                         fontFamily:
                  //                                             'HelveticaNeueRounded',
                  //                                         fontSize: 12.fontSize,
                  //                                         fontWeight:
                  //                                             FontWeight.w300,
                  //                                         color: AppColors
                  //                                             .primaryTextColor,
                  //                                       ),
                  //                                 ),
                  //                               );
                  //                             }).toList(),
                  //                             onChanged: (String? value) {
                  //                               setState(
                  //                                 () {
                  //                                   selectedClass = value;
                  //                                 },
                  //                               );
                  //                             },
                  //                           ),
                  //                           AppSpacing.verticalSpaceMedium,
                  //                           Align(
                  //                             alignment: Alignment.bottomRight,
                  //                             child: InkWell(
                  //                               onTap: () {
                  //                                 if (formKey.currentState!
                  //                                         .validate() &&
                  //                                     _imageFiles[index] !=
                  //                                         null) {
                  //                                   CustomSnackbar.show(
                  //                                     context,
                  //                                     'student saved successfully',
                  //                                   );
                  //                                 }
                  //                               },
                  //                               child: Container(
                  //                                 padding: EdgeInsets.symmetric(
                  //                                   horizontal: 30.width,
                  //                                   vertical: 10.height,
                  //                                 ),
                  //                                 decoration: BoxDecoration(
                  //                                   border: Border.all(
                  //                                     color: AppColors
                  //                                         .primaryColor,
                  //                                   ),
                  //                                   borderRadius:
                  //                                       BorderRadius.circular(
                  //                                     15,
                  //                                   ),
                  //                                 ),
                  //                                 child: Text(
                  //                                   'Save',
                  //                                   style: Theme.of(context)
                  //                                       .textTheme
                  //                                       .bodyMedium!
                  //                                       .copyWith(
                  //                                         fontFamily:
                  //                                             'HelveticaNeueRounded',
                  //                                         fontSize: 13.fontSize,
                  //                                         fontWeight:
                  //                                             FontWeight.w500,
                  //                                         color: AppColors
                  //                                             .primaryColor,
                  //                                       ),
                  //                                 ),
                  //                               ),
                  //                             ),
                  //                           ),
                  //                           AppSpacing.verticalSpaceMedium,
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //               AppSpacing.verticalSpaceHuge,
                  //             ],
                  //           );
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: addMoreStudents,
                  //   child: Align(
                  //     alignment: Alignment.bottomLeft,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: [
                  //         SvgPicture.asset('assets/svg/plus1.svg'),
                  //         Text(
                  //           ' Add more students',
                  //           style:
                  //               Theme.of(context).textTheme.bodyLarge!.copyWith(
                  //                     fontFamily: 'HelveticaNeueRounded',
                  //                     fontSize: 13.fontSize,
                  //                     fontWeight: FontWeight.w500,
                  //                     color: AppColors.primaryColor,
                  //                   ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
