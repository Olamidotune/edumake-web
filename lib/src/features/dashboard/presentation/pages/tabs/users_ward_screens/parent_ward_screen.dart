import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/features/dashboard/data/model/students/student_model.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/ward_big_card.dart';
import 'package:flutter/material.dart';

class ParentWardScreen extends StatefulWidget {
  const ParentWardScreen({required this.students, super.key});
  final List<StudentModel> students;

  @override
  State<ParentWardScreen> createState() => _ParentWardScreenState();
}

class _ParentWardScreenState extends State<ParentWardScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppStrings.yourWards} (3)',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        AppSpacing.verticalSpaceMedium,
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.students.length,
          itemBuilder: (context, index) {
            return WardBigCard(
              wardName: widget.students[index].name,
              wardClass: widget.students[index].classLevel,
              wardSchool: widget.students[index].school,
              wardNextEvent: widget.students[index].upComingEvent,
              wardAttendance: widget.students[index].attendance,
              feesAmount: widget.students[index].feesAmount,
              color: AppColors.purpleColor,
              wardGender: widget.students[index].gender,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return AppSpacing.verticalSpaceMedium;
          },
        ),
      ],
    );
  }
}
