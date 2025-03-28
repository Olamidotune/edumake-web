import 'dart:convert';
import 'dart:io';

import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/subjects/subjects_bloc.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/multiclass_drop_down.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';

class AddTeachersScreen extends StatefulWidget {
  const AddTeachersScreen({super.key});

  static const String routeName = '/add-teachers';

  @override
  State<AddTeachersScreen> createState() => _AddTeachersScreenState();
}

final ScrollController _scrollController = ScrollController();
final FocusNode nameFocusNode = FocusNode();
final FocusNode emailFocusNode = FocusNode();
final TextEditingController nameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final formKey = GlobalKey<FormState>();
List<String> selectedClassIds = [];
List<String> selectedSubjectIds = [];
bool isBusy = false;
File? imageFile;
File? _selectedImage;
Uint8List? _selectedImageBytes;

class _AddTeachersScreenState extends State<AddTeachersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 500),
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
                    'Add Teachers',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'Fill in all inputs to complete teachers invitation.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  AppSpacing.verticalSpaceMassive,
                  Center(
                    child: GestureDetector(
                      onTap: _pickImageFromGallery,
                      child: CircleAvatar(
                        radius: 195,
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.1),
                        child: _selectedImageBytes != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image.memory(
                                  _selectedImageBytes!,
                                  width: 259,
                                  height: 258,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : imageFile != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(80),
                                    child: Image.file(
                                      File(imageFile!.path),
                                      width: 195,
                                      height: 195,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/camera.svg',
                                        height: 150,
                                        color: AppColors.blackColor
                                            .withOpacity(0.6),
                                      ),
                                      Text(
                                        'Insert Image',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontFamily:
                                                  'HelveticaNeueRounded',
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.primaryTextColor,
                                            ),
                                      ),
                                    ],
                                  ),
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WebCustomTextFormField(
                          controller: nameController,
                          focusNode: nameFocusNode,
                          hintText: 'Enter Name',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          title: "Teacher's Name",
                          customFilled: true,
                          validator: (value) {
                            if (value?.trim().isNotEmpty ?? false) {
                              return null;
                            }
                            return 'Please enter a valid name';
                          },
                          editIcon: SvgPicture.asset(
                            'assets/svg/edit.svg',
                            height: 10,
                          ),
                        ),
                        AppSpacing.verticalSpaceLarge,
                        Text(
                          'Subject(s) in charge',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        BlocBuilder<SubjectsBloc, SubjectsState>(
                          builder: (context, state) {
                            return MultiClassDropdown(
                              isDesktop: true,
                              classes: state.subjects,
                              onClassesSelected: (subjectIds) {
                                setState(() {
                                  selectedSubjectIds = subjectIds;
                                });
                              },
                            );
                          },
                        ),
                        AppSpacing.verticalSpaceLarge,
                        Text(
                          'Classes taught by teacher',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                          builder: (context, state) {
                            return MultiClassDropdown(
                              isDesktop: true,
                              classes: state.classesData ?? [],
                              onClassesSelected: (classIds) {
                                setState(() {
                                  selectedClassIds = classIds;
                                });
                              },
                            );
                          },
                        ),
                        AppSpacing.verticalSpaceLarge,
                        WebCustomTextFormField(
                          controller: emailController,
                          focusNode: emailFocusNode,
                          hintText: 'Enter Email',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          title: "Teacher's Email",
                          customFilled: true,
                          validator: (value) {
                            if (EmailValidator.validate(value?.trim() ?? '')) {
                              return null;
                            }
                            return 'Please enter a valid email address';
                          },
                          editIcon: SvgPicture.asset(
                            'assets/svg/edit.svg',
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceMassive,
                  Button(
                    isWeb: true,
                    busy: isBusy,
                    text: 'Send Invite',
                    onPressed: () async {
                      if (formKey.currentState!.validate() &&
                              imageFile != null ||
                          _selectedImageBytes != null) {
                        setState(() {
                          isBusy = true;
                        });
                        await _sendInvite(
                          context,
                          selectedClassIds,
                          selectedSubjectIds,
                        );
                        setState(() {
                          isBusy = false;
                        });
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

  Future<void> _pickImageFromGallery() async {
    if (kIsWeb) {
      // For Flutter Web
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image, // Restrict to images only
      );

      if (result != null && result.files.first.bytes != null) {
        setState(() {
          _selectedImageBytes = result.files.first.bytes;
        });

        ToastService.toast(
          'Image Selected Successfully',
        );
      } else {
        ToastService.toast(
          'No Image Was Selected',
          ToastType.error,
        );
      }
    } else {
      // For Mobile
      final storageStatus = await Permission.storage.request();
      if (storageStatus.isDenied) {
        ToastService.toast(
          'Storage permission is required to upload an image.',
          ToastType.error,
        );
        return;
      }

      final returnedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (returnedImage == null) {
        ToastService.toast(
          'No Image Was Selected',
          ToastType.error,
        );
        return;
      }

      setState(() {
        _selectedImage = File(returnedImage.path);
        ToastService.toast(
          'Image Selected Successfully',
        );
      });
    }
  }

  // Future<void> _sendInvite() async {
  //   setState(() {
  //     isBusy = true;
  //   });
  //   await Future<void>.delayed(const Duration(seconds: 2));
  //   CustomSnackbar.show(context, 'Invite sent successfully');
  //   Navigator.pop(context, true);
  //   setState(() {
  //     isBusy = false;
  //   });
  // }

  Future<void> _sendInvite(BuildContext context, List<String> selectedClassIds,
      List<String> selectedSubjects) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();
    final baseUrl = dotenv.env[EnvKeys.apiBaseUrl] ?? '';

    final url = '${baseUrl}api/v1/sch/teacher/$schoolId';

    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));

      request.headers.addAll({
        'Authorization': token,
        'Accept': 'application/json',
      });

      request.fields['name'] = nameController.text;
      request.fields['email'] = emailController.text;
      selectedClassIds.asMap().forEach((index, classId) {
        request.fields['classes[$index]'] = classId;
      });

      selectedSubjectIds.asMap().forEach((index, subjectId) {
        request.fields['subjects[$index]'] = subjectId;
      });

      if (_selectedImage != null || _selectedImageBytes != null) {
        if (kIsWeb && _selectedImageBytes != null) {
          request.files.add(
            http.MultipartFile.fromBytes(
              'teacherImage',
              _selectedImageBytes!,
              filename:
                  'upload.jpg', // Web images don't have a path, so set a default name
              contentType: MediaType('image', 'jpeg'),
            ),
          );
        } else if (_selectedImage != null) {
          request.files.add(
            await http.MultipartFile.fromPath(
              'teacherImage',
              _selectedImage!.path,
              filename: basename(_selectedImage!.path),
              contentType: MediaType('image', 'jpeg'),
            ),
          );
        }
      }

      logInfo('Request fields: ${request.fields}');

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();
      logInfo('responseBody: $responseBody');

      final responseJson = jsonDecode(responseBody);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final successMessage = responseJson['message'];
        logInfo(responseBody);
        ToastService.toast(successMessage.toString());
        Navigator.of(context).pop();
      } else {
        final errorMessage =
            responseJson['message'] ?? 'An unknown error occurred';
        ToastService.toast(
          errorMessage.toString(),
          ToastType.error,
        );
      }
    } catch (error, trace) {
      logError(error, trace);
      ToastService.toast(
        'Something went wrong.',
        ToastType.error,
      );
    }
  }
}
