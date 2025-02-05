import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/classes_details_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  final scrollController = ScrollController();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_loadMoreClasses);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.classes,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 24.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                  ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/svg/plus1.svg',
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        Text(
          AppStrings.exploreTheListofClassesYouHaveAddedSoFar,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12.fontSize,
                fontWeight: FontWeight.w300,
                color: AppColors.blackColor,
              ),
        ),
        AppSpacing.verticalSpaceMedium,
        // Classes
        CustomRawScroller(
          scrollController: scrollController,
          child: BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
            builder: (context, state) {
              if (state.classesData == null || state.classesData!.isEmpty) {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: AppSpacing.verticalValueSpaceLarge * 6),
                      Image.asset(
                        'assets/png/empty.png',
                        height: 150,
                      ),
                      Text(
                        'No Data Available',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 20, // Assuming 20 is a valid font size
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryTextColor,
                            ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        'Add a class or classes by clicking the + button above.',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 14, // Assuming 14 is a valid font size
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryTexColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }
              return SizedBox(
                height: MediaQuery.of(context).size.height < kMinSupportedHeight
                    ? 450.height
                    : 510.height,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: state.classes.length +
                      (state.fetchClassesStatus ==
                              FormzSubmissionStatus.inProgress
                          ? 1
                          : 0),
                  controller: scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return AppSpacing.verticalSpaceMedium;
                  },
                  itemBuilder: (context, index) {
                    // Check if this is the last item and we're loading
                    if (index == state.classes.length &&
                        state.fetchClassesStatus ==
                            FormzSubmissionStatus.inProgress) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: SpinKitPulsingGrid(
                            color: AppColors.primaryColor,
                            size: 30,
                          ),
                        ),
                      );
                    }

                    // Now we know index is within bounds of classesData
                    final classData = state.classes[index];
                    return GestureDetector(
                      onTap: () {
                        context.read<GetSchoolDataBloc>().add(
                              GetSchoolDataEvent.onSelectedClassNameChanged(
                                classData.name,
                              ),
                            );
                        Navigator.of(context, rootNavigator: true).pushNamed(
                          ClassDetailsScreen.routeName,
                          arguments: classData.name,
                        );
                      },
                      child: ClassesListTileContainer(
                        isProfilePictureEnabled: false,
                        title: classData.name.toUpperCase(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _loadMoreClasses() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        context.read<GetSchoolDataBloc>().state.totalClassCursor !=
            context
                .read<GetSchoolDataBloc>()
                .state
                .getSchoolDataModel
                ?.cursor) {
      context
          .read<GetSchoolDataBloc>()
          .add(const GetSchoolDataEvent.fetchPaginatedClasses());
    }
  }
}
