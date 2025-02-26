import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/get_wards/get_wards_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_ward_screens/parent_tab/ward_details_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/ward_big_card.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class ParentWardScreen extends StatelessWidget {
  const ParentWardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return BlocBuilder<GetWardsBloc, GetWardsState>(
      builder: (context, state) {
        if (state.getWardStatus == FormzSubmissionStatus.inProgress) {
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
        if (state.getWardRequestModel?.data.isEmpty ?? false) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: AppSpacing.verticalValueSpaceLarge * 7),
              Image.asset(
                'assets/png/empty.png',
                height: 150,
              ),
              AppSpacing.verticalSpaceMedium,
              Text(
                'Search the full name of your ward or the school, crosscheck to be sure it is the correct school then make a result to have access to his academic data.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14.fontSize, // Assuming 20 is a valid font size
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryTextColor,
                    ),
                textAlign: TextAlign.center,
              ),
              AppSpacing.verticalSpaceSmall,
            ],
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${AppStrings.yourWards} (${state.getWardRequestModel?.data.length ?? 0})',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            AppSpacing.verticalSpaceMedium,
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.getWardRequestModel?.data.length ?? 0,
              itemBuilder: (context, index) {
                final wardDetails = state.getWardRequestModel?.data[index];
                return GestureDetector(
                  onTap: () {
                    //calling it here
                    context.read<GetSchoolDataBloc>().add(
                          GetSchoolDataEvent.fetchSubjectForStudent(
                            wardDetails?.id,
                          ),
                        );
                    context.read<GetSchoolDataBloc>().add(
                          GetSchoolDataEvent.onSelectedSubjectNameChanged(
                            wardDetails?.id,
                          ),
                        );

                    Navigator.of(context, rootNavigator: true).pushNamed(
                      WardDetailScreen.routeName,
                      arguments: {
                        'wardName': wardDetails?.wardName ?? '',
                        'wardClass': wardDetails?.wardDatumClass.name,
                        'wardSchool': wardDetails?.wardDatumSchool.schoolName,
                        'wardId': wardDetails?.id,
                        'wardClassId': wardDetails?.wardDatumClass.id,
                        'wardSchoolId': wardDetails?.wardDatumSchool.id,
                      },
                    );
                  },
                  child: WardBigCard(
                    wardName: wardDetails?.wardName ?? '',
                    wardClass: wardDetails?.wardDatumClass.name ?? '',
                    wardSchool: wardDetails?.wardDatumSchool.schoolName ?? '',
                    wardNextEvent: 'Upcoming event',
                    wardAttendance: 'Attendance',
                    feesAmount: '20,000',
                    color: AppColors.purpleColor,
                    // wardGender: 'Female',
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return AppSpacing.verticalSpaceMedium;
              },
            ),
          ],
        );
      },
    );
  }
}
