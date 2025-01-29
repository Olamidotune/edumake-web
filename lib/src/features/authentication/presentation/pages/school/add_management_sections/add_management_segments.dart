import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_classes.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_students.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_subjects.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_teachers.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/dashboard.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: EdgeInsets.only(left: AppSpacing.horizontalSpacing),
                child: CircleAvatar(
                  radius: 40.width,
                  backgroundColor: AppColors.greyColor,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      state.user!.fullName!.substring(0, 1).toUpperCase(),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 12.fontSize,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryTextColor,
                          ),
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
                      text: ' ${state.user?.fullName ?? ''}',
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
                        context
                            .read<GetSchoolDataBloc>()
                            .add(const GetSchoolDataEvent.fetchClasses());
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
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            Dashboard.routeName,
                            (route) => false,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // void _onRequestReadStoragePermission(
  //   PermissionsState state,
  //   BuildContext context,
  // ) {
  //   if (!state.isReadStoragePermissionGranted) {
  //     debugPrint(state.isReadStoragePermissionGranted.toString());
  //     showDialog<void>(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: const Text('Permission Required'),
  //           content: const Text(
  //             'Please allow the app to access your storage to continue.',
  //           ),
  //           actions: <Widget>[
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: const Text('Cancel'),
  //             ),
  //             TextButton(
  //               onPressed: () {
  //                 context.read<PermissionsBloc>().add(
  //                       const PermissionsEvent.requestReadStoragePermission(),
  //                     );
  //                 Navigator.of(context).pop();
  //               },
  //               child: const Text('Allow'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }

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
            SvgPicture.asset('assets/svg/plus1.svg'),
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
