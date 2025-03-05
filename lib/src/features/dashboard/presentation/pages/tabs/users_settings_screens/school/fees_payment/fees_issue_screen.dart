import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/fees_payment/fees_payment_bloc.dart';
import 'package:edumake_frontend/src/shared/dialogs/success_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/fees_big_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class FeesIssueScreen extends StatelessWidget {
  const FeesIssueScreen({super.key});

  static const String routeName = 'fees_issue_screen.dart';

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final controller = TextEditingController();
    final formKey = GlobalKey<FormState>();

    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;

    final title = args['title'];
    final payer = args['payer'];
    final amount = args['amount'];
    final paidBy = args['paidBy'];
    final paidFor = args['paidFor'];
    final studentClass = args['class'];
    final studentId = args['studentId'];
    final feesId = args['feesId'];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
            scrollController: scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSpacing.verticalSpaceMedium,
                    BlocBuilder<FeesPaymentBloc, FeesPaymentState>(
                      buildWhen: (previous, current) {
                        return _buildWhen(context, previous, current);
                      },
                      builder: (context, state) {
                        return Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FeesBigContainer(
                                  title: title.toString(),
                                  amount: amount as int,
                                  payer: payer.toString(),
                                  studentClass: studentClass.toString(),
                                  paidBy: paidBy.toString(),
                                  paidFor: paidFor.toString()),
                              AppSpacing.verticalSpaceLarge,
                              CustomBigTextFormField(
                                header: 'Enter issue here.',
                                controller: controller,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please input an issue';
                                  }
                                  return null;
                                },
                              ),
                              AppSpacing.verticalSpaceMassive,
                              AppSpacing.verticalSpaceMassive,
                              Button(
                                busy: state.submitFeesIssueStatus ==
                                    FormzSubmissionStatus.inProgress,
                                text: 'Submit',
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    context.read<FeesPaymentBloc>().add(
                                        FeesPaymentEvent.submitFeesIssue(
                                            feesId.toString(),
                                            studentId.toString(),
                                            controller.value.text.trim()));
                                  }
                                },
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  bool _buildWhen(
    BuildContext context,
    FeesPaymentState previous,
    FeesPaymentState current,
  ) {
    if (previous.submitFeesIssueStatus == FormzSubmissionStatus.inProgress &&
        current.submitFeesIssueStatus == FormzSubmissionStatus.success) {
      _showSuccessDialog(context);

      return false;
    } else if (previous.submitFeesIssueStatus ==
            FormzSubmissionStatus.inProgress &&
        current.submitFeesIssueStatus == FormzSubmissionStatus.failure &&
        current.errorMessage != null) {
      ToastService.toast(
        current.errorMessage ?? 'An error occurred',
        ToastType.error,
      );
      context
          .read<FeesPaymentBloc>()
          .add(const FeesPaymentEvent.errorMessage(null));
      return false;
    }
    return true;
  }

  void _showSuccessDialog(BuildContext context) async {
    await showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const SuccessDialog(
          titleText: 'Issue successfully submitted',
          text: 'We will look into this and get back to you immediately.',
        );
      },
    );
  }
}
