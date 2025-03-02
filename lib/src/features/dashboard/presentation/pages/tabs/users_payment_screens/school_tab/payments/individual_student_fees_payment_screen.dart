import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_settings_screens/school/fees_payment/fees_payment_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';

class IndividualStudentFeesPaymentScreen extends StatelessWidget {
  const IndividualStudentFeesPaymentScreen({super.key});

  static const String routeName = 'individual_student_payment_screen';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final studentName = args['studentName'];
    final className = args['className'];
    final schoolName = args['schoolName'];
    final classId = args['classId'];
    final studentId = args['studentId'];
    final source = args['source'];

    final scrollController = ScrollController();

    return Scaffold(
      appBar: CustomAppBar(
        title: studentName.toString(),
        subtitle: '$schoolName. ($className)',
      ),
      body: CustomRawScroller(
        scrollController: scrollController,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(
              AppSpacing.horizontalSpacing,
            ),
            child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const FeesContainer(
                      title: 'title', term: 'term', amount: 0);
                },
                separatorBuilder: (context, index) {
                  return AppSpacing.verticalSpaceMedium;
                },
                itemCount: 20),
          ),
        ),
      ),
    );
  }
}
