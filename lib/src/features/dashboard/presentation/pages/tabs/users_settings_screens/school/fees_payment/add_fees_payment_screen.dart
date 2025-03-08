import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_breakdown.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/fees_payment/fees_payment_request_body.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/multiclass_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class AddFeesPaymentScreen extends StatefulWidget {
  const AddFeesPaymentScreen({super.key});

  static const String routeName = '/add_payment_screen.dart';

  @override
  State<AddFeesPaymentScreen> createState() => _AddFeesPaymentScreenState();
}

class _AddFeesPaymentScreenState extends State<AddFeesPaymentScreen> {
  final scroller = ScrollController();
  final titleController = TextEditingController();
  final detailsController = TextEditingController();
  final totalAmount = TextEditingController();
  final termController = TextEditingController();
  final dateController = TextEditingController();
  final termFocusNode = FocusNode();
  final dateFocusNode = FocusNode();

  final titleFocusNode = FocusNode();
  final detailsFocusNode = FocusNode();
  final totalAmountFocusNode = FocusNode();

  final List<TextEditingController> _breakDownTitleController = [];
  final List<TextEditingController> _breakDownAmountController = [];
  final List<FocusNode> _breakDownTitleFocusNodes = [];
  final List<FocusNode> _breakDownAmountFocusNodes = [];
  List<String> selectedClassId = [];
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _breakDownTitleController.add(TextEditingController());
    _breakDownAmountController.add(TextEditingController());
    _breakDownTitleFocusNodes.add(FocusNode());
    _breakDownAmountFocusNodes.add(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scroller,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scroller,
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Fess',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 32.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceTiny,
                  Text(
                    'Fill in all inputs to complete Fees addition.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceMassive,
                  BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
                    buildWhen: (previous, current) =>
                        _buildWhen(context, previous, current),
                    builder: (context, state) {
                      return Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFormField(
                                title: 'Fees Title',
                                controller: titleController,
                                focusNode: titleFocusNode,
                                onChanged: (value) {
                                  context.read<FeesPaymentBloc>().add(
                                      FeesPaymentEvent.feesTitleChanged(value));
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Title is required';
                                  }
                                  return null;
                                },
                                hintText: 'What is this fee for?',
                                keyboardType: TextInputType.text),
                            AppSpacing.verticalSpaceMedium,
                            CustomTextFormField(
                                title: 'Details',
                                controller: detailsController,
                                focusNode: detailsFocusNode,
                                hintText: 'Enter Details',
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Title is required';
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  context.read<FeesPaymentBloc>().add(
                                      FeesPaymentEvent.feesTitleChanged(value));
                                },
                                keyboardType: TextInputType.text),
                            AppSpacing.verticalSpaceMedium,
                            Text(
                              'Fees Breakdown',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.fontSize,
                                  ),
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: _breakDownTitleController.length,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextFormField(
                                        controller:
                                            _breakDownTitleController[index],
                                        focusNode:
                                            _breakDownTitleFocusNodes[index],
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Field cannot be empty';
                                          }
                                          return null;
                                        },
                                        hintText: 'Title',
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                    AppSpacing.horizontalSpaceMedium,
                                    Expanded(
                                      child: CustomTextFormField(
                                        controller:
                                            _breakDownAmountController[index],
                                        focusNode:
                                            _breakDownAmountFocusNodes[index],
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Field cannot be empty';
                                          }
                                          return null;
                                        },
                                        hintText: 'Amount',
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            AppSpacing.verticalSpaceTiny,
                            Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: _addBreakdownField,
                                  child: Text(
                                    'Add More',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.fontSize,
                                        ),
                                  ),
                                )),
                            AppSpacing.verticalSpaceMedium,
                            CustomTextFormField(
                                title: 'Term',
                                controller: termController,
                                focusNode: termFocusNode,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Term is required';
                                  }
                                  return null;
                                },
                                hintText: 'Enter Term',
                                keyboardType: TextInputType.text),
                            AppSpacing.verticalSpaceMedium,
                            CustomTextFormField(
                              title: 'Due Date',
                              controller: dateController,
                              focusNode: dateFocusNode,
                              hintText: AppStrings.eventsDate,
                              keyboardType: TextInputType.text,
                              customFilled: true,
                              readOnly: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please select a due date.';
                                }
                                return null;
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
                            Text(
                              'Total Amount',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.fontSize,
                                  ),
                            ),
                            Row(
                              spacing: 6,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: CustomTextFormField(
                                      controller: dateController,
                                      focusNode: dateFocusNode,
                                      readOnly: true,
                                      hintText: 'NGN',
                                      keyboardType: TextInputType.text),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: CustomTextFormField(
                                      controller: totalAmount,
                                      focusNode: totalAmountFocusNode,
                                      onChanged: (value) {
                                        context.read<FeesPaymentBloc>().add(
                                            FeesPaymentEvent
                                                .feesTotalAmountChanged(value));
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Amount is required';
                                        }
                                        return null;
                                      },
                                      hintText: 'Enter Amount',
                                      keyboardType: TextInputType.text),
                                ),
                              ],
                            ),
                            AppSpacing.verticalSpaceMedium,
                            Text(
                              'Recipient/Payer',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.fontSize,
                                  ),
                            ),
                            AppSpacing.verticalSpaceSmall,
                            BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                              builder: (context, state) {
                                return MultiClassDropdown(
                                  classes: state.classesData ?? [],
                                  onClassesSelected: (selectedClassIds) {
                                    setState(() {
                                      selectedClassId = selectedClassIds;
                                    });
                                  },
                                );
                              },
                            ),
                            AppSpacing.verticalSpaceMassive,
                            Button(
                              busy: state.addFeesPaymentStatus ==
                                  FormzSubmissionStatus.inProgress,
                              text: 'Review',
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  final fees = FeesPaymentRequestBody(
                                    titleController.value.text.trim(),
                                    detailsController.value.text.trim(),
                                    totalAmount.value.text.trim(),
                                    selectedClassId,
                                    [
                                      for (int i = 0;
                                          i < _breakDownTitleController.length;
                                          i++)
                                        FeesBreakdown(
                                          title: _breakDownTitleController[i]
                                              .value
                                              .text,
                                          amount: int.parse(
                                            _breakDownAmountController[i]
                                                .value
                                                .text
                                                .replaceAll(',', ''),
                                          ),
                                        ),
                                    ],
                                    dateController.value.text,
                                    termController.value.text,
                                  );
                                  context
                                      .read<FeesPaymentBloc>()
                                      .add(FeesPaymentEvent.addFees(fees));
                                }
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _addBreakdownField() {
    setState(() {
      _breakDownTitleController.add(TextEditingController());
      _breakDownAmountController.add(TextEditingController());
      _breakDownAmountFocusNodes.add(FocusNode());
      _breakDownTitleFocusNodes.add(FocusNode());
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
        dateController.text = picked.toString().split(' ')[0];
      });
    }
  }

  bool _buildWhen(
    BuildContext context,
    FeesPaymentState previous,
    FeesPaymentState current,
  ) {
    if (previous.addFeesPaymentStatus == FormzSubmissionStatus.inProgress &&
        current.addFeesPaymentStatus == FormzSubmissionStatus.success) {
      ToastService.toast('Fees payment added successfully');
      Navigator.of(context).pop();
    } else if (previous.addFeesPaymentStatus ==
            FormzSubmissionStatus.inProgress &&
        current.addFeesPaymentStatus == FormzSubmissionStatus.failure) {
      ToastService.toast(
        current.errorMessage ?? 'An error occurred',
        ToastType.error,
      );
      return true;
    }
    return true;
  }
}
