import 'dart:io';

import 'package:csv/csv.dart';
import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/core/extentions/string_extension.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_snackbar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/import_csv_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';

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
  String _csvContent = '';
  bool busy = false;
  bool savedClasses = false;

  @override
  Widget build(BuildContext context) {
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
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'Edit the preset classes and input all the classes available in your school. You can also import your school class document and ease the stress of manually inputing your school data.',
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
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    _csvContent,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  GestureDetector(
                    onTap: _svaeCSVTemplates,
                    child: Text(
                      'or add classes manually',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 12.fontSize,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryTextColor,
                          ),
                    ),
                  ),
                  AppSpacing.verticalSpaceSmall,
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
                                onFieldSubmitted: () {
                                  if (index < classes.length - 1) {
                                    FocusScope.of(context)
                                        .requestFocus(focusNodes[index + 1]);
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
                    onTap: _addClass,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset('assets/svg/plus.svg'),
                          Text(
                            ' Add more classes',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
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
                    busy: busy,
                    text: 'Save Classes',
                    onPressed: () {
                      if (formKey.currentState!.validate() ||
                          _csvFile != null) {
                        CustomSnackbar.show(
                          context,
                          'Classes saved successfully',
                        );
                        setState(() {
                          busy = !busy;
                        });
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.pop(context, true);
                        });
                        setState(() => busy);
                      } else {
                        CustomSnackbar.show(
                          context,
                          'Please upload a CSV file or add classes manually',
                          isError: true,
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
  }

  Future<void> _pickAndProcessCsv() async {
    final expectedHeaders = [
      'Index',
      'Customer Id',
      'First Name',
      'Last Name',
      'Company',
      'City',
      'Country',
      'Phone 1',
      'Phone 2',
      'Email',
      'Subscription Date',
      'Website',
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
        CustomSnackbar.show(
          context,
          'Invalid CSV file. Please upload a valid CSV file with correct headers in the exact order.',
          isError: true,
        );
        return;
      }

      // Proceed if headers are correct
      setState(() {
        _csvContent = displayedContent.map((e) => e.join(',')).join('\n');
        _csvFile = pickedCSV.files.first;
      });
    }
  }

  Future<String> _loadLocalCSVFile() async {
    debugPrint('Loading local CSV file');
    return rootBundle.loadString('assets/csv/csv_template.csv');
  }

  Future<void> _svaeCSVTemplates() async {
    final csv = const ListToCsvConverter().convert([
      [
        'Index',
        'Customer Id',
        'First Name',
        'Last Name',
        'Company',
        'City',
        'Country',
        'Phone 1',
        'Phone 2',
        'Email',
        'Subscription Date',
        'Website',
      ],
    ]);

    final directory = await getApplicationDocumentsDirectory();

    // Specify the file path
    final file = File('${directory.path}/template.csv');

    await file.writeAsString(csv);

    CustomSnackbar.show(
      context,
      'CSV template saved successfully',
    );
  }

  void _addClass() {
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
