import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/test/test_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';

import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class AddTestResultsScreen extends StatefulWidget {
  const AddTestResultsScreen({super.key});

  static const String routeName = 'add/test result';

  @override
  State<AddTestResultsScreen> createState() => _AddTestResultsScreenState();
}

class _AddTestResultsScreenState extends State<AddTestResultsScreen> {
  final scrollerController = ScrollController();
  final titleController = TextEditingController();
  final dateController = TextEditingController();
  final gradeController = TextEditingController();

  final titleFocusNode = FocusNode();
  final dateFocusNode = FocusNode();
  final gradeFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollerController,
        child: Padding(
          padding: EdgeInsets.all(
            AppSpacing.horizontalSpacingMedium,
          ),
          child: SingleChildScrollView(
            controller: scrollerController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Add Test Result',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryTexColor,
                        ),
                  ),
                ),
                AppSpacing.verticalSpaceMedium,
                BlocBuilder<TestBloc, TestState>(
                  builder: (context, state) {
                    return Form(
                      key: formKey,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            title: 'Title',
                            controller: gradeController,
                            focusNode: gradeFocusNode,
                            onChanged: (value) {
                              context
                                  .read<TestBloc>()
                                  .add(TestEvent.titleChanged(value));
                            },
                            hintText: 'Enter Title',
                            keyboardType: TextInputType.text,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          CustomTextFormField(
                            title: 'Date Written',
                            controller: dateController,
                            focusNode: dateFocusNode,
                            hintText: 'Test Date',
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
                              context.read<TestBloc>().add(
                                    TestEvent.dateChanged(value),
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
                          CustomTextFormField(
                            title: 'Grade',
                            controller: titleController,
                            focusNode: titleFocusNode,
                            // onChanged: (value) {
                            //    context.read<TestBloc>().add(
                            //         TestEvent.gradeChanged(value),
                            //       );
                            // },
                            hintText: 'Enter Score',
                            keyboardType: TextInputType.number,
                          ),
                          AppSpacing.verticalSpaceMedium,
                          SizedBox(
                            height: MediaQuery.of(context).size.height <
                                    kMinSupportedHeight
                                ? 130.height
                                : 180.height,
                          ),
                          Button(
                            busy: state.addTestResultStatus ==
                                FormzSubmissionStatus.inProgress,
                            text: 'Save',
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.read<TestBloc>().add(
                                      TestEvent.addTestResult(
                                          '679c3bb5612df077b49947f1',
                                          '67994daa70cb1409e17f1c63',
                                          dateController.value.text,
                                          '679f8d8a0d7b34ddc134ebda'),
                                    );
                              }
                            },
                          ),
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

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2025),
      lastDate: DateTime(4100),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        dateController.text = picked.toString().split(' ')[0];
      });
    }
  }
}
