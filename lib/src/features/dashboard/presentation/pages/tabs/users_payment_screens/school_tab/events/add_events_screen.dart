import 'dart:convert';
import 'dart:io';
import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/datum.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

class AddEventsScreen extends StatefulWidget {
  const AddEventsScreen({super.key});

  static const String routeName = '/add-events';

  @override
  State<AddEventsScreen> createState() => _AddEventsScreenState();
}

class _AddEventsScreenState extends State<AddEventsScreen> {
  final scrollController = ScrollController();
  final eventTitleController = TextEditingController();
  final eventTitleFocusNode = FocusNode();
  final eventDetailsController = TextEditingController();
  final eventClassController = TextEditingController();
  final eventDateController = TextEditingController();
  final eventDateFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  String? _filePath;
  List<String>? selectedClassId;

  bool _isUploading = false;

  File? _imageFile;
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
                  AppStrings.addEvents,
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
                            title: AppStrings.eventTitle,
                            controller: eventTitleController,
                            focusNode: eventTitleFocusNode,
                            hintText: AppStrings.eventTitle,
                            keyboardType: TextInputType.text,
                            customFilled: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please input an event title';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              context.read<EventsBloc>().add(
                                    EventsEvent.onEventTitleChanged(value),
                                  );
                            },
                            editIcon: SvgPicture.asset(
                              'assets/svg/edit.svg',
                              color: AppColors.primaryColor,
                            ),
                          ),
                          AppSpacing.verticalSpaceMedium,
                          MultiClassDropdown(
                            classes: getSchoolState.classesData!,
                            onClassesSelected: (selectedClassIds) {
                              setState(() {
                                selectedClassId = selectedClassIds;
                              });
                            },
                          ),

                          ///
                          AppSpacing.verticalSpaceTiny,
                          AppSpacing.verticalSpaceMedium,
                          CustomTextFormField(
                            title: AppStrings.eventsDate,
                            controller: eventDateController,
                            focusNode: eventDateFocusNode,
                            hintText: AppStrings.eventsDate,
                            keyboardType: TextInputType.text,
                            customFilled: true,
                            readOnly: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please select a date for the event.';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              context.read<EventsBloc>().add(
                                    EventsEvent.onEventDateChanged(value),
                                  );
                            },
                            onTap: () {
                              _selectDate(context);
                            },
                            editIcon: SvgPicture.asset(
                              'assets/svg/calendar.svg',
                              color: AppColors.primaryColor,
                            ),
                          ),
                          AppSpacing.verticalSpaceMedium,
                          CustomBigTextFormField(
                              header: AppStrings.eventsDetails,
                              controller: eventDetailsController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please input an event details';
                                }
                                return null;
                              }),
                          AppSpacing.verticalSpaceMedium,
                          Text(
                            '${AppStrings.associatedEvent} (${AppStrings.optional})',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 12.fontSize,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                ),
                          ),
                          AppSpacing.verticalSpaceSmall,
                          GestureDetector(
                            // onTap: _pickFile,
                            child: Container(
                              height: 200.height,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor.withOpacity(.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: _imageFile != null
                                    ? Image.file(
                                        fit: BoxFit.fill,
                                        File(_imageFile?.path ?? ''),
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
                                            '${AppStrings.upload} ${AppStrings.pngJpg}',
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
                                        ],
                                      ),
                              ),
                            ),
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Button(
                            busy: _isUploading,
                            text: AppStrings.review,
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  _isUploading = true;
                                });
                                await _addEvent(selectedClassId ?? []);
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

  // ignore: unused_element
  Future<void> _pickFile() async {
    // Specify the type of files to pick (images and videos)
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      setState(() {
        _filePath = result.files.single.path;
      });
    } else {
      print('No file selected.');
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2025),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        eventDateController.text = picked.toString().split(' ')[0];
      });
    }
  }

  Future<void> _addEvent(List<String> selectedClassIds) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();
    final baseUrl = dotenv.env[EnvKeys.apiBaseUrl] ?? '';

    final url = '${baseUrl}api/v1/sch/events/$schoolId';

    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));

      request.headers.addAll({
        'Authorization': token,
        'Accept': 'application/json',
      });

      request.fields['title'] = eventTitleController.text;
      request.fields['date'] = eventDateController.text;
      request.fields['details'] = eventDetailsController.text;
      request.fields['classes[0]'] =
          jsonEncode(selectedClassIds); // Just set once

      logInfo('Request fields: ${request.fields}');

      if (_filePath != null) {
        request.files
            .add(await http.MultipartFile.fromPath('eventImage', _filePath!));
      }

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();
      logInfo('responseBody: $responseBody');

      final responseJson = jsonDecode(responseBody);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final successMessage = responseJson['message'];
        logInfo(responseBody);
        ToastService.toast(successMessage.toString());
        Navigator.pop(context);
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
      rethrow;
    }
  }

  // Future<void> _insertImage() async {
  //   final result = await FilePicker.platform.pickFiles(
  //     type: FileType.image,
  //   );

  //   if (result != null) {
  //     setState(() {
  //       _filePath = result.files.single.path!;
  //     });
  //     ToastService.toast('Image selected successfully');
  //     debugPrint(_imageFile?.path);
  //   } else {
  //     ToastService.toast('No file selected', ToastType.error);
  //   }
  // }

  //   setState(() {
  //     _isUploading = true;
  //   });

  //   final dio = Dio();

  //   try {
  //     // Create FormData
  //     final formData = FormData.fromMap({
  //       'title': eventTitleController.text,
  //       'date': eventDateController.text,
  //       'details': eventDetailsController,
  //       'classes': '679ecefcf2a40a2b9f0e30ee',
  //       'eventImage': await MultipartFile.fromFile(
  //         _filePath!, // File path
  //         filename: _filePath!.split('/').last, // Extract file name
  //       ),
  //     });

  //     final schoolId = await getSchoolID();
  //     final token = await getAuthorization();

  //     print(schoolId);
  //     print(token);

  //     // Send the request
  //     final response = await dio.post(
  // '$baseUrl/api/v1/sch/events/$schoolId',
  //       data: formData,
  //       options: Options(
  //         headers: {
  //           'Authorization': token,
  //           'Accept': 'application/json',
  //           'Content-Type': 'multipart/form-data',
  //         },
  //       ),
  //     );

  //     if (response.statusCode == 200) {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('Upload successful!')),
  //       );
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('Upload failed: ${response.statusCode}')),
  //       );
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Error: $e')),
  //     );
  //   } finally {
  //     setState(() {
  //       _isUploading = false;
  //     });
  //   }
}

class MultiClassDropdown extends StatefulWidget {
  const MultiClassDropdown({
    required this.classes,
    required this.onClassesSelected,
    Key? key,
  }) : super(key: key);

  final List<Datum> classes;
  final void Function(List<String>) onClassesSelected;

  @override
  State<MultiClassDropdown> createState() => _MultiClassDropdownState();
}

class _MultiClassDropdownState extends State<MultiClassDropdown> {
  final List<String> _selectedClassIds = [];
  final List<String> _selectedClassNames = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.greyColor.withOpacity(0.3)),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(
                _selectedClassNames.isEmpty
                    ? 'Select Classes'
                    : _selectedClassNames.join(', '),
                style: TextStyle(
                  color: _selectedClassNames.isEmpty
                      ? AppColors.greyColor
                      : AppColors.blackColor,
                  fontSize: 14,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              icon: const Icon(Icons.arrow_drop_down),
              items: widget.classes.map((Datum classData) {
                return DropdownMenuItem<String>(
                  value: classData.id,
                  child: Row(
                    children: [
                      Checkbox(
                        value: _selectedClassIds.contains(classData.id),
                        onChanged: (bool? selected) {
                          _updateSelection(classData);
                        },
                      ),
                      Text(classData.name),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                if (value != null) {
                  final selectedClass = widget.classes.firstWhere(
                    (classData) => classData.id == value,
                  );
                  _updateSelection(selectedClass);
                }
              },
            ),
          ),
        ),
        if (_selectedClassNames.isNotEmpty) ...[
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: _selectedClassNames.map((className) {
              return Chip(
                label: Text(className),
                onDeleted: () {
                  final classData = widget.classes.firstWhere(
                    (c) => c.name == className,
                  );
                  _updateSelection(classData);
                },
              );
            }).toList(),
          ),
        ],
      ],
    );
  }

  void _updateSelection(Datum classData) {
    setState(() {
      if (_selectedClassIds.contains(classData.id)) {
        _selectedClassIds.remove(classData.id);
        _selectedClassNames.remove(classData.name);
      } else {
        _selectedClassIds.add(classData.id);
        _selectedClassNames.add(classData.name);
      }
      widget.onClassesSelected(_selectedClassIds);
    });
  }
}
