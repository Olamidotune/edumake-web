import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_result.dart';

import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/search/search_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/wards_mgt/ward_mgt_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/parent/parent_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/school_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/teacher_home_screen.dart';
import 'package:edumake_frontend/src/shared/dialogs/connect_ward_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_search_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 20.width,
                    backgroundColor: AppColors.greyColor,
                    child: GestureDetector(
                      onTap: () {
                        debugPrint('${state.user?.id}');
                      },
                      child: Text(
                        state.user?.fullName?.substring(0, 1) ?? '',
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
                Expanded(
                  flex: 8,
                  child: RichText(
                    text: TextSpan(
                      text: 'Welcome ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'HelveticaNeueRounded',
                            fontSize: 15.fontSize,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryTextColor,
                          ),
                      children: [
                        TextSpan(
                          text: '${state.user?.fullName ?? 'User'},',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 15.fontSize,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                    overflow: TextOverflow.fade,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              InkWell(
                onTap: () {
                  debugPrint('User: ${state.user?.fullName}');
                },
                child: SvgPicture.asset(
                  'assets/svg/chat.svg',
                  height: 20.height,
                  width: 50.width,
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/svg/notification.svg',
                  height: 25.height,
                  width: 50.width,
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55.h),
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      CustomSearchBar(
                        onSearch: () {
                          context
                              .read<SearchBloc>()
                              .add(const SearchEvent.cancel());
                        },
                        isActive: state.isSearchActive,
                        onChanged: (query) {
                          context
                              .read<SearchBloc>()
                              .add(SearchEvent.onSearchQueryChanged(query));
                          context
                              .read<SearchBloc>()
                              .add(const SearchEvent.fetchResult());
                        },
                        onSubmitted: (_) {
                          context
                              .read<SearchBloc>()
                              .add(const SearchEvent.fetchResult());
                        },
                        isHomePage: true,
                        hintText: 'Search for students, teachers, classes...',
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          body: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.searchResultStatus ==
                  FormzSubmissionStatus.inProgress) {
                return SizedBox(
                  height: 600,
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return const CustomShimmer();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return AppSpacing.verticalSpaceMedium;
                    },
                    itemCount: 20,
                  ),
                );
              }
              if (state.searchResultStatus == FormzSubmissionStatus.failure) {
                return Center(
                  child: Text(
                    state.errorMessage ?? 'An error occurred',
                    style: const TextStyle(
                      color: AppColors.redColor,
                    ),
                  ),
                );
              }

              if (state.searchResultStatus == FormzSubmissionStatus.success) {
                return SearchResultsList(
                  searchResults: state.searchResponse?.data,
                  scrollController: _scrollController,
                );
              }
              return RawScrollbar(
                controller: _scrollController,
                thumbColor: AppColors.primaryColor.withOpacity(0.4),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 5,
                ),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
                    child: _buildView(),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildView() {
    final role = context.read<AuthBloc>().state.user?.role;
    if (role == 'parent') {
      return const ParentDashboard();
    } else if (role == 'teacher') {
      return const TeacherHomeScreen();
    } else {
      return const SchoolDashBoard();
    }
  }
}

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    required this.student,
    required this.onTap,
    super.key,
  });

  final SearchResult student;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.horizontalSpacing),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            AppSpacing.verticalSpaceMedium,
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: AppColors.primaryColor.withOpacity(0.1),
                border: Border(
                  left: BorderSide(
                    color: Colors.blue.shade700,
                    width: 6,
                  ),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 14.fontSize,
                    backgroundColor: AppColors.primaryColor,
                    child: SvgPicture.asset(
                      'assets/svg/people.svg',
                    ),
                  ),
                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          student.studentName,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          student.school.schoolName,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                fontSize: 12.fontSize,
                                fontWeight: FontWeight.w300,
                                color:
                                    AppColors.primaryTextColor.withOpacity(0.6),
                              ),
                        ),
                      ],
                    ),
                  ),
                  // Class Label
                  Text(
                    student.classInfo.name,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({
    required this.searchResults,
    required this.scrollController,
    super.key,
  });
  final List<SearchResult>? searchResults;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: scrollController,
      thumbColor: AppColors.primaryColor.withOpacity(0.4),
      radius: const Radius.circular(8),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.separated(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        itemCount: searchResults?.length ?? 0,
        separatorBuilder: (context, index) => AppSpacing.verticalSpaceSmall,
        itemBuilder: (context, index) {
          final student = searchResults![index];
          return SearchResultItem(
            student: student,
            onTap: () {
              context.read<SearchBloc>().add(
                    SearchEvent.onSelectedResultChanged(student.studentName),
                  );
              _showConnectDialog(
                context,
                student.studentName,
                student.school.schoolName,
                student.classInfo.name,
                student.id,
              );
            },
          );
        },
      ),
    );
  }
}

void _showConnectDialog(
  BuildContext context,
  String studentName,
  String schoolName,
  String className,
  String studentId,
) async {
  await showDialog<void>(
    context: context,
    builder: (dialogContext) {
      return BlocListener<WardMgtBloc, WardMgtState>(
        listener: (context, state) {
          if (state.requestAccessToWardStatus ==
              FormzSubmissionStatus.failure) {
            ToastService.toast(
              state.getWardRequestModel?.message ?? 'Something went wrong',
            );
          }
          if (state.requestAccessToWardStatus ==
              FormzSubmissionStatus.success) {
            ToastService.toast('Request sent successfully to admin');
            Navigator.of(dialogContext).pop();
          }
        },
        child: BlocBuilder<WardMgtBloc, WardMgtState>(
          builder: (context, state) {
            return ConnectWardDialog(
              studentName: studentName,
              schoolName: schoolName,
              className: className,
              busy: state.requestAccessToWardStatus ==
                  FormzSubmissionStatus.inProgress,
              onTap: () {
                context
                    .read<WardMgtBloc>()
                    .add(WardMgtEvent.getRequest(studentId));
              },
            );
          },
        ),
      );
    },
  );
}
