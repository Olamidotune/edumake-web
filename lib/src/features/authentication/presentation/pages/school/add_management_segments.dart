import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_classes.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_students.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_subjects.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_teachers.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddManagementSegmentsScreen extends StatefulWidget {
  const AddManagementSegmentsScreen({super.key});

  static const String routeName = 'add-management-segments/screen';

  @override
  State<AddManagementSegmentsScreen> createState() =>
      _AddManagementSegmentsScreenState();
}

class _AddManagementSegmentsScreenState
    extends State<AddManagementSegmentsScreen> {
  bool busy = false;
  bool savedClasses = false;
  bool savedSubjects = false;
  bool savedStudents = false;
  bool savedTeachers = false;
  @override
  Widget build(BuildContext context) {


    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: AppSpacing.horizontalSpacing),
            child: CircleAvatar(
              radius: 40.width,
              backgroundColor: AppColors.greyColor,
              child: Text(
                'DD',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'HelveticaNeueRounded',
                      fontSize: 12.fontSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryTextColor,
                    ),
              ),
            ),
          ),
          centerTitle: false,
          title: RichText(
            text: TextSpan(
              text: AppStrings.hello,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 16.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryTextColor,
                  ),
              children: [
                TextSpan(
                  text: ' David Doe,',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'HelveticaNeueRounded',
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor,
                      ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: Column(
              children: [
                Text(
                  AppStrings.beAdvisedToAddTheseSegments,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 12.fontSize,
                        fontWeight: FontWeight.w300,
                      ),
                  textAlign: TextAlign.justify,
                ),
                AppSpacing.verticalSpaceMassive,
                AddCsvContainer(
                  name: savedClasses ? 'Classes Added' : 'Add Classes',
                  onTap: () {
                    _navigateToClassScreen(AddClassesScreen.routeName);
                  },
                ),
                AppSpacing.verticalSpaceMedium,
                AddCsvContainer(
                  name: savedSubjects ? 'Subjects Added' : 'Add Subjects',
                  onTap: () {
                    _navigateToSchoolScreen(AddSubjectsScreen.routeName);
                  },
                ),
                AppSpacing.verticalSpaceMedium,
                AddCsvContainer(
                  name: savedStudents ? 'Students Added' : 'Add Students',
                  onTap: () {
                    _navigateToStudentsScreen(AddStudentsScreen.routeName);
                  },
                ),
                AppSpacing.verticalSpaceMedium,
                AddCsvContainer(
                  name: savedTeachers ? 'Teachers Added' : 'Add Teachers',
                  onTap: () {
                    _navigateToTeachersScreen(AddTeachersScreen.routeName);
                  },
                ),
                AppSpacing.verticalSpaceMassive,
                Button(
                  buttonColor: savedClasses &&
                          savedSubjects &&
                          savedStudents &&
                          savedTeachers
                      ? AppColors.primaryColor
                      : AppColors.secondaryColor.withOpacity(0.1),
                  busy: busy,
                  text: 'Setup Done',
                  onPressed: () {
                    if (savedClasses &&
                        savedSubjects &&
                        savedStudents &&
                        savedTeachers) {
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToClassScreen(String routeName) async {
    final result = await Navigator.of(context).pushNamed(routeName);
    if (result != null) {
      setState(() {
        savedClasses = result as bool;
      });
    }
  }

  void _navigateToSchoolScreen(String routeName) async {
    final result = await Navigator.of(context).pushNamed(routeName);
    if (result != null) {
      setState(() {
        savedSubjects = result as bool;
      });
    }
  }

  void _navigateToStudentsScreen(String routeName) async {
    final result = await Navigator.of(context).pushNamed(routeName);
    if (result != null) {
      setState(() {
        savedStudents = result as bool;
      });
    }
  }

  void _navigateToTeachersScreen(String routeName) async {
    final result = await Navigator.of(context).pushNamed(routeName);
    if (result != null) {
      setState(() {
        savedTeachers = result as bool;
      });
    }
  }
}

class AddCsvContainer extends StatelessWidget {
  const AddCsvContainer({
    required this.name,
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70.height,
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: AppColors.secondaryColor.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/plus.svg'),
            AppSpacing.horizontalSpaceSmall,
            Text(
              name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
