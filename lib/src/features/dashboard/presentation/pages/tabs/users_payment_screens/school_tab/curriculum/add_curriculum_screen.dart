import 'dart:convert';

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
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/multiclass_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class AddCurriculumScreen extends StatefulWidget {
  const AddCurriculumScreen({super.key});
  static const String routeName = '/add_curriculum_screen';

  @override
  State<AddCurriculumScreen> createState() => _AddCurriculumScreenState();
}

class _AddCurriculumScreenState extends State<AddCurriculumScreen> {
  final curriculumTextController = TextEditingController();
  final scrollController = ScrollController();
  final formKey = GlobalKey<FormState>();

  List<String> selectedClassIds = [];
  bool isUploading = false;
  late String subjectId;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    subjectId = args['subjectId'].toString();
  }

  @override
  void dispose() {
    curriculumTextController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  Future<void> _uploadCurriculum(BuildContext context,
      List<String> selectedClassIds, String subjectId) async {
    final schoolId = await getSchoolID();
    final token = await getAuthorization();
    final baseUrl = dotenv.env[EnvKeys.apiBaseUrl] ?? '';

    final url = '${baseUrl}api/v1/sch/curriculum/$schoolId';

    try {
      // Create a JSON body instead of multipart request
      final Map<String, dynamic> requestBody = {
        'classes': selectedClassIds, // Send as a JSON array
        'text': curriculumTextController.text.trim(),
        'subjectId': subjectId,
      };

      logInfo('Request body: $requestBody');

      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Authorization': token,
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );

      final responseBody = response.body;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add a Scheme of Work/Curriculum',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 24.fontSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                    ),
              ),
              AppSpacing.verticalSpaceMedium,
              CustomRawScroller(
                scrollController: scrollController,
                child: BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                  builder: (context, getSchoolState) {
                    return Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              AppStrings.subject,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: AppColors.blackColor,
                                    fontSize: 16.fontSize,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ),
                          AppSpacing.verticalSpaceSmall,
                          MultiClassDropdown(
                            classes: getSchoolState.classesData ?? [],
                            onClassesSelected: (classIds) {
                              setState(() {
                                selectedClassIds = classIds;
                              });
                            },
                          ),
                          AppSpacing.verticalSpaceMedium,
                          CustomBigTextFormField(
                            header: 'Curriculum Text',
                            controller: curriculumTextController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter curriculum text';
                              }
                              return null;
                            },
                          ),
                          AppSpacing.verticalSpaceMassive,
                          Button(
                            text: isUploading
                                ? 'Uploading...'
                                : AppStrings.upload,
                            onPressed: isUploading
                                ? null
                                : () async {
                                    if (formKey.currentState!.validate()) {
                                      if (selectedClassIds.isEmpty) {
                                        ToastService.toast(
                                          'Please select at least one class',
                                          ToastType.error,
                                        );
                                        return;
                                      }

                                      setState(() {
                                        isUploading = true;
                                      });

                                      await _uploadCurriculum(
                                        context,
                                        selectedClassIds,
                                        subjectId,
                                      );

                                      if (mounted) {
                                        setState(() {
                                          isUploading = false;
                                        });
                                      }
                                    }
                                  },
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
