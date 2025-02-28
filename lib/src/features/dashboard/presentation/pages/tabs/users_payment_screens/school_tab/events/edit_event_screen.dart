// // ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:edumake_frontend/config/env_keys.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/events/events_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/events/add_events_screen.dart';
import 'package:edumake_frontend/src/shared/helpers/http_helper.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/multiclass_drop_down.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:permission_handler/permission_handler.dart';

class EditEventScreen extends StatefulWidget {
  const EditEventScreen({super.key});

  static const String routeName = 'edit_event_screen';

  @override
  _EditEventScreenState createState() => _EditEventScreenState();
}

class _EditEventScreenState extends State<EditEventScreen> {
  @override
  void initState() {
    super.initState();
    final eventDetails =
        context.read<EventsBloc>().state.eventIdData?.details ?? '';
    _eventDetailsController = TextEditingController(text: eventDetails);
    final eventTitle =
        context.read<EventsBloc>().state.eventIdData?.title ?? '';
    _eventTitleController = TextEditingController(text: eventTitle);
  }

  TextEditingController _eventDetailsController = TextEditingController();
  TextEditingController _eventTitleController = TextEditingController();
  final _eventDateController = TextEditingController();
  bool busy = false;

  ScrollController scrollController = ScrollController();
  List<String>? selectedClassId;
  List<String>? selectedEventId;
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state.fetchEventByIdStatus == FormzSubmissionStatus.inProgress) {
            return SizedBox(
              height: 800,
              child: ListView.builder(
                controller: scrollController,
                itemBuilder: (context, index) {
                  return const CustomShimmer();
                },
                itemCount: 10,
              ),
            );
          }
          if (state.fetchEventByIdStatus == FormzSubmissionStatus.failure) {
            return const NoDataAvailable(
              message: 'Something went wrong',
              height: .7,
            );
          }
          return SafeArea(
            child: CustomRawScroller(
              scrollController: scrollController,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                child: Padding(
                  padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.eventIdData?.imageUrl == null ||
                          state.eventIdData!.imageUrl.isEmpty)
                        GestureDetector(
                          onTap: _pickImageFromGallery,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            width: double.infinity,
                            height: 250,
                            child: Image.asset(
                              'assets/png/event.png',
                            ),
                          ),
                        )
                      else
                        GestureDetector(
                          onTap: _pickImageFromGallery,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            width: double.infinity,
                            height: 250,
                            child: CachedNetworkImage(
                              imageUrl: state.eventIdData!.imageUrl,
                              placeholder: (context, url) => const Center(
                                child: SpinKitPulsingGrid(
                                  color: AppColors.primaryColor,
                                  size: 30,
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  Image.asset('assets/png/event.png'),
                            ),
                          ),
                        ),
                      Text(
                        state.eventIdData?.title ?? '',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 16.fontSize,
                              fontWeight: FontWeight.w700,
                              color: AppColors.blackColor,
                            ),
                      ),
                      TextField(
                        autocorrect: false,
                        cursorColor: AppColors.primaryColor,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppColors.primaryTextColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 12.fontSize,
                            ),
                        controller: _eventTitleController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.greyColor.withOpacity(0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        maxLines: null,
                      ),
                      AppSpacing.verticalSpaceSmall,
                      GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Text(
                          _eventDateController.value.text.isEmpty
                              ? state.eventIdData?.createdAt ?? ''
                              : _eventDateController.value.text,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 12.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor,
                                  ),
                        ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Recipients',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.fontSize,
                                  ),
                        ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                        builder: (context, state) {
                          return MultiClassDropdown(
                            classes: state.classesData!,
                            onClassesSelected: (selectedClassIds) {
                              setState(() {
                                selectedClassId = selectedClassIds;
                              });
                            },
                          );
                        },
                      ),
                      AppSpacing.verticalSpaceSmall,
                      AppSpacing.verticalSpaceMedium,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          AppStrings.associatedEventOptional,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
                      const Divider(
                        thickness: 2,
                      ),
                      AppSpacing.verticalSpaceMedium,
                      Column(
                        children: [
                          TextField(
                            autocorrect: false,
                            cursorColor: AppColors.primaryColor,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: AppColors.primaryTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12.fontSize,
                                    ),
                            controller: _eventDetailsController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.greyColor.withOpacity(0.1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            maxLines: null,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          Button(
                            busy: busy,
                            text: 'Save and Post',
                            onPressed: () async {
                              setState(() {
                                busy = true;
                              });
                              print(state.eventClass?[0].id ?? '');
                              await _editEvent(
                                  context,
                                  selectedClassId ?? [],
                                  selectedEventId ?? [],
                                  state.eventIdData?.id ?? '');

                              setState(() {
                                busy = false;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _eventDetailsController.dispose();
    super.dispose();
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

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2025),
      lastDate: DateTime(4100),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _eventDateController.text = picked.toString().split(' ')[0];
      });
    }
  }

  Future<void> _editEvent(BuildContext context, List<String> selectedClassIds,
      List<String> associatedEvents, String eventId) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();
    final baseUrl = dotenv.env[EnvKeys.apiBaseUrl] ?? '';

    final url = '${baseUrl}api/v1/sch/events/$schoolId/$eventId';

    try {
      final request = http.MultipartRequest('PUT', Uri.parse(url));

      request.headers.addAll({
        'Authorization': token,
        'Accept': 'application/json',
      });

      request.fields['title'] = _eventTitleController.text;
      associatedEvents.asMap().forEach((index, eventId) {
        request.fields['associatedEvents[$index]'] = eventId;
      });
      request.fields['date'] = _eventDateController.text;
      request.fields['details'] = _eventDetailsController.text;
      selectedClassIds.asMap().forEach((index, classId) {
        request.fields['classes[$index]'] = classId;
      });

      if (_selectedImage != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'eventImage',
            _selectedImage!.path,
            filename: path.basename(_selectedImage!.path),
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
