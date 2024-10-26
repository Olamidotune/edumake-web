import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_list.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/ward_big_card.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WardScreen extends StatelessWidget {
  const WardScreen({super.key});

  static const String routeName = 'ward_Screen';

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final students = parseStudents(studentList);
    return Scaffold(
      appBar: const CustomAppBar(
        title: '',
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${l10n.yourWards} (3)',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              AppSpacing.verticalSpaceMedium,
              WardBigCard(
                l10n: l10n,
                wardName: 'John Doe',
                wardClass: 'Grade 5',
                wardSchool: 'Springfield Elementary',
                wardNextEvent: 'Parent-Teacher Meeting',
                wardAttendance: '95%',
                wardGender: 'Male',
                feesAmount: '120,000',
                color: AppColors.primaryColor,
              ),
              AppSpacing.verticalSpaceMedium,
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return WardBigCard(
                    l10n: l10n,
                    wardName: students[index].name,
                    wardClass: students[index].classLevel,
                    wardSchool: students[index].school,
                    wardNextEvent: students[index].upComingEvent,
                    wardAttendance: students[index].attendance,
                    feesAmount: students[index].feesAmount,
                    color: AppColors.purpleColor,
                    wardGender: students[index].gender,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return AppSpacing.verticalSpaceMedium;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
