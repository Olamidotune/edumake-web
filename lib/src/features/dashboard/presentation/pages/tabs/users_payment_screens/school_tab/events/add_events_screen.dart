import 'dart:convert';
import 'dart:io';
import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/upcoming_event.dart';
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
import 'package:edumake_frontend/src/shared/widgets/multiclass_drop_down.dart';
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

  List<String>? selectedClassId;
  List<String>? selectedEventId;

  bool _isUploading = false;

  File? _selectedImage;
  Uint8List? _selectedImageBytes;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: const Drawer(),
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
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,

                          AppSpacing.verticalSpaceMedium,
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              AppStrings.associatedEventOptional,
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

                          /////
                          BlocBuilder<EventsBloc, EventsState>(
                            builder: (context, state) {
                              return AssociatedEventsDropDown(
                                events: state.upComingEvent ?? [],
                                onEventSelected: (selectedEventsId) {
                                  setState(() {
                                    selectedEventId = selectedEventsId;
                                  });
                                },
                              );
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,
                          AppSpacing.verticalSpaceMedium,
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Event Image',
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
                                        fit: BoxFit.fill,
                                        File(_selectedImage?.path ?? ''),
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
                                await _addEvent(
                                  context,
                                  selectedClassId ?? [],
                                  selectedEventId ?? [],
                                );
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

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2025),
      lastDate: DateTime(4100),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        eventDateController.text = picked.toString().split(' ')[0];
      });
    }
  }

  Future<void> _addEvent(BuildContext context, List<String> selectedClassIds,
      List<String> associatedEvents) async {
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
      associatedEvents.asMap().forEach((index, eventId) {
        request.fields['associatedEvents[$index]'] = eventId;
      });
      request.fields['date'] = eventDateController.text;
      request.fields['details'] = eventDetailsController.text;
      selectedClassIds.asMap().forEach((index, classId) {
        request.fields['classes[$index]'] = classId;
      });

      if (_selectedImage != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'eventImage',
            _selectedImage!.path,
            filename: basename(_selectedImage!.path),
            contentType: MediaType(
              'image',
              'jpeg',
            ),
          ),
        );
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

class AssociatedEventsDropDown extends StatefulWidget {
  const AssociatedEventsDropDown({
    required this.events,
    required this.onEventSelected,
    super.key,
  });

  final List<UpcomingEvent> events;
  final void Function(List<String>) onEventSelected;

  @override
  State<AssociatedEventsDropDown> createState() => _AssociatedEventsDropDown();
}

class _AssociatedEventsDropDown extends State<AssociatedEventsDropDown> {
  final Set<String> _selectedIds = {};

  // Generate a consistent color based on the class name
  Color _getChipColor(String name) {
    final colors = [
      Colors.blue.shade100,
      Colors.green.shade100,
      Colors.purple.shade100,
      Colors.orange.shade100,
      Colors.pink.shade100,
      Colors.teal.shade100,
      Colors.indigo.shade100,
    ];

    // Use the string's hashCode to pick a color
    final colorIndex = name.hashCode.abs() % colors.length;
    return colors[colorIndex];
  }

  // Get darker shade for the label text
  Color _getTextColor(String name) {
    final colors = [
      Colors.blue.shade900,
      Colors.green.shade900,
      Colors.purple.shade900,
      Colors.orange.shade900,
      Colors.pink.shade900,
      Colors.teal.shade900,
      Colors.indigo.shade900,
    ];

    final colorIndex = name.hashCode.abs() % colors.length;
    return colors[colorIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(.1),
        border: Border.all(
          color: AppColors.greyColor.withOpacity(.1),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: ExpansionTile(
        title: Text(
          _selectedIds.isEmpty
              ? 'Select Associated Events'
              : '${_selectedIds.length} Selected Events',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w300,
                fontSize: 12.fontSize,
              ),
        ),
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 300),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // "Select All" option
                  ListTile(
                    leading: Checkbox(
                      value: _selectedIds.length == widget.events.length,
                      tristate: true,
                      onChanged: (bool? value) {
                        setState(() {
                          if (value ?? false) {
                            _selectedIds.addAll(
                              widget.events.map((event) => event.id),
                            );
                          } else {
                            _selectedIds.clear();
                          }
                          widget.onEventSelected(_selectedIds.toList());
                        });
                      },
                    ),
                    title: const Text('Select All'),
                    onTap: () {
                      setState(() {
                        if (_selectedIds.length == widget.events.length) {
                          _selectedIds.clear();
                        } else {
                          _selectedIds.addAll(
                            widget.events.map((event) => event.id),
                          );
                        }
                        widget.onEventSelected(_selectedIds.toList());
                      });
                    },
                  ),
                  const Divider(),
                  // Individual class options
                  ...widget.events.map(
                    (eventData) => ListTile(
                      leading: Checkbox(
                        activeColor: AppColors.primaryColor,
                        value: _selectedIds.contains(eventData.id),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value ?? false) {
                              _selectedIds.add(eventData.id);
                            } else {
                              _selectedIds.remove(eventData.id);
                            }
                            widget.onEventSelected(_selectedIds.toList());
                          });
                        },
                      ),
                      title: Text(eventData.title),
                      onTap: () {
                        setState(() {
                          if (_selectedIds.contains(eventData.id)) {
                            _selectedIds.remove(eventData.id);
                          } else {
                            _selectedIds.add(eventData.id);
                          }
                          widget.onEventSelected(_selectedIds.toList());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Selected items chips
          if (_selectedIds.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8),
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: _selectedIds.map((id) {
                  final eventData = widget.events.firstWhere((e) => e.id == id);
                  return Chip(
                    label: Text(
                      eventData.title,
                      style: TextStyle(
                        color: _getTextColor(eventData.title),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    backgroundColor: _getChipColor(eventData.title),
                    deleteIconColor: _getTextColor(eventData.title),
                    onDeleted: () {
                      setState(() {
                        _selectedIds.remove(id);
                        widget.onEventSelected(_selectedIds.toList());
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
