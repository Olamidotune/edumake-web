import 'dart:convert';
import 'dart:io';

import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/multiclass_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';

class AddLectureTimeTableScreen extends StatefulWidget {
  const AddLectureTimeTableScreen({super.key});

  static const String routeName = '/lecture-time-table';

  @override
  State<AddLectureTimeTableScreen> createState() =>
      _AddLectureTimeTableScreenState();
}

class _AddLectureTimeTableScreenState extends State<AddLectureTimeTableScreen> {
  final scrollController = ScrollController();
  final timeTableTitleController = TextEditingController();
  final timeTableFocusNode = FocusNode();
  final eventDetailsController = TextEditingController();
  final eventClassController = TextEditingController();
  final eventDateController = TextEditingController();
  final eventDateFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  List<String>? selectedClassId;
  List<String>? selectedEventId;

  bool _isUploading = false;

  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.addLectureTimeTable,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 24.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                  builder: (context, getSchoolState) {
                    return Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            title: 'Title',
                            controller: timeTableTitleController,
                            focusNode: timeTableFocusNode,
                            hintText: 'Enter Title',
                            keyboardType: TextInputType.text,
                            customFilled: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please input a title.';
                              }
                              return null;
                            },
                            onChanged: (value) {},
                            editIcon: SvgPicture.asset(
                              'assets/svg/edit.svg',
                              color: AppColors.primaryColor,
                            ),
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Recipients',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.fontSize,
                                  ),
                            ),
                          ),
                          AppSpacing.verticalSpaceSmall,
                          MultiClassDropdown(
                            classes: getSchoolState.classesData!,
                            onClassesSelected: (selectedClassIds) {
                              setState(() {
                                selectedClassId = selectedClassIds;
                              });
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,
                          GestureDetector(
                            onTap: _pickImageFromGallery,
                            child: Container(
                              height: 200.height,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor.withOpacity(.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: _selectedImage != null
                                    ? Image.file(
                                        _selectedImage!,
                                        fit: BoxFit.fill,
                                      )
                                    : Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/svg/upload.svg',
                                            color: AppColors.primaryColor,
                                          ),
                                          AppSpacing.verticalSpaceMedium,
                                          Text(
                                            '${AppStrings.upload} Timetable (${AppStrings.pngJpg})',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontSize: 12.fontSize,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors
                                                      .primaryTextColor,
                                                ),
                                          ),
                                          AppSpacing.verticalSpaceMedium,
                                          Text(
                                            'Maximum size: 5MB',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontSize: 14.fontSize,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.primaryColor,
                                                ),
                                          ),
                                        ],
                                      ),
                              ),
                            ),
                          ),
                          AppSpacing.verticalSpaceMassive,
                          AppSpacing.verticalSpaceMassive,
                          Button(
                            busy: _isUploading,
                            text: 'Post',
                            onPressed: () async {
                              if (_formKey.currentState!.validate() &&
                                  _selectedImage != null) {
                                setState(() {
                                  _isUploading = true;
                                });
                                await _uploadTimeTable(
                                    context, selectedClassId ?? []);
                                setState(() {
                                  _isUploading = false;
                                });
                              }
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImageFromGallery() async {
    final storageStatus = await Permission.storage.request();
    if (storageStatus.isDenied) {
      ToastService.toast(
        'Camera permission is required to upload an image.',
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

  Future<void> _uploadTimeTable(
      BuildContext context, List<String> selectedClassIds) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();
    final baseUrl = dotenv.env[EnvKeys.apiBaseUrl] ?? '';

    final url = '${baseUrl}api/v1/sch/tt/class/$schoolId';
    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));
      request.headers.addAll({
        'Authorization': token,
        'Accept': 'application/json',
      });

      request.fields['title'] = timeTableTitleController.text;
      selectedClassIds.asMap().forEach((index, classId) {
        request.fields['classes[$index]'] = classId;
      });
      request.files.add(
        await http.MultipartFile.fromPath(
          'classTimetable',
          _selectedImage!.path,
          filename: basename(_selectedImage!.path),
          contentType: MediaType(
            'image',
            'jpeg',
          ),
        ),
      );

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
