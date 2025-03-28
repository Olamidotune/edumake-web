import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/school_tab/teacher_details_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
import 'package:edumake_frontend/src/shared/widgets/teachers_list_tile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SchoolTeacherScreen extends StatelessWidget {
  const SchoolTeacherScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.teachers,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 24.fontSize,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceSmall,
        Text(
          AppStrings.exploreTheListofTeacherYouHaveAddedSoFar,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12.fontSize,
                fontWeight: FontWeight.w300,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceMedium,
        BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
          builder: (context, state) {
            if (state.fetchTeachersForSchoolStatus ==
                FormzSubmissionStatus.inProgress) {
              return SizedBox(
                height: 800,
                child: ListView.builder(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    return const CustomShimmer();
                  },
                  itemCount: 10,
                ),
              );
            }

            if (state.fetchTeachersForSchoolStatus ==
                FormzSubmissionStatus.failure) {
              return const NoDataAvailable(
                  message: 'Something went wrong', height: 5);
            }

            if (state.getTeacherDatum?.isEmpty ?? true) {
              return const NoDataAvailable(
                  message:
                      'No teachers have been added yet. Please add some teachers to see them here.',
                  height: 5);
            }
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final teacher = state.getTeacherDatum?[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).pushNamed(
                      TeacherDetailsScreen.routeName,
                      arguments: {
                        'teacher': state.getTeacherDatum?[index].fullName,
                        'email': state.getTeacherDatum?[index].email,
                        'subject': state.getTeacherDatum?[index].subjects
                      },
                    );
                  },
                  child: TeachersListTileContainer(
                    teachers: teacher?.fullName ?? '',
                    subjects: teacher?.subjects?.first ?? '',
                    classes: teacher?.classes?.toList().toString() ?? '',
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return AppSpacing.verticalSpaceMedium;
              },
              itemCount: state.getTeacherDatum?.length ?? 0,
            );
          },
        ),
      ],
    );
  }
}
