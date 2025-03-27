import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_classes.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_students.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_subjects.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_teachers.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/subjects/subjects_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_add_school_container.dart';
import 'package:edumake_frontend/src/shared/widgets/webx/web_welcome_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebTopWidgets extends StatelessWidget {
  const WebTopWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WelcomeWebContainer(),
        AppSpacing.verticalSpaceMedium,
        Container(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacingSmall),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Scrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            thickness: 8,
            radius: const Radius.circular(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: AppSpacing.horizontalSpacingSmall),
                  WebAddSchoolContainer(
                    title: 'Add Classes',
                    description:
                        'Add a class or set of classes, add students to it and assign teachers/subjects.',
                    buttonText: 'Add Classes',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed(AddClassesScreen.routeName);
                    },
                  ),
                  SizedBox(width: AppSpacing.horizontalSpacingSmall),
                  WebAddSchoolContainer(
                    title: 'Add Student',
                    description:
                        'Add student, input their classes, subjects and teachers in charge of the student.',
                    buttonText: 'Add Student',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed(AddStudentsScreen.routeName);
                    },
                  ),
                  SizedBox(width: AppSpacing.horizontalSpacingSmall),
                  WebAddSchoolContainer(
                    title: 'Add Subjects',
                    description:
                        'Add subjects and assign them to a class or set of classes.',
                    buttonText: 'Add Subjects',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed(AddSubjectsScreen.routeName);
                    },
                  ),
                  SizedBox(width: AppSpacing.horizontalSpacingSmall),
                  WebAddSchoolContainer(
                    title: 'Add Teacher',
                    description:
                        'Add a teacher and assign him/her to a subject and set of classes they will manage.',
                    buttonText: 'Add Teacher',
                    onTap: () {
                      context
                          .read<SubjectsBloc>()
                          .add(const SubjectsEvent.fetchSubjects());
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed(AddTeachersScreen.routeName);
                    },
                  ),
                  SizedBox(width: AppSpacing.horizontalSpacingSmall),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
