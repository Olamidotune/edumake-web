import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/kyc/kyc_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/add_management_sections/add_management_segments.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/search_result.dart';

import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/search/search_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/parent/wards_mgt/send_request_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/parent/parent_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/school_home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_home_screens/teacher_home_screen.dart';
import 'package:edumake_frontend/src/shared/dialogs/connect_ward_dialog.dart';
import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_shimmer.dart';
import 'package:edumake_frontend/src/shared/widgets/no_data_available.dart';
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
  final TextEditingController _controller = TextEditingController();
  final refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    final kycState = context.read<KycBloc>().state;
    final isDesktop = ScreenUtil().screenWidth > kMedDesktopWidth;
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: isDesktop
              ? AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      return Padding(
                        padding: EdgeInsets.only(right: 100.width),
                        child: SearchBar(
                          backgroundColor: WidgetStateProperty.all(
                            AppColors.shadowColor,
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          elevation: WidgetStateProperty.all(0),
                          leading: SvgPicture.asset(
                            'assets/svg/search.svg',
                            color: AppColors.primaryColor,
                          ),
                          controller: _controller,
                          onChanged: (query) {
                            context
                                .read<SearchBloc>()
                                .add(SearchEvent.onSearchQueryChanged(query));
                            context
                                .read<SearchBloc>()
                                .add(const SearchEvent.fetchResult());
                          },
                          onTapOutside: (event) {
                            context
                                .read<SearchBloc>()
                                .add(const SearchEvent.cancel());
                          },
                          onSubmitted: (_) {
                            context
                                .read<SearchBloc>()
                                .add(const SearchEvent.fetchResult());
                          },
                          hintText: 'Search',
                        ),
                      );
                    },
                  ),
                )
              : AppBar(
                  centerTitle: false,
                  title: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 23.fontSize,
                          backgroundColor:
                              AppColors.primaryColor.withOpacity(.3),
                          child: _showPlaceHolder(),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: RichText(
                          text: TextSpan(
                            text: 'Welcome ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 15.fontSize,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.primaryTextColor,
                                ),
                            children: [
                              TextSpan(
                                text:
                                    '${state.user?.fullName ?? kycState.kycResponse?.data.firstName},',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
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
                      onTap: () {},
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
                  bottom: isDesktop
                      ? null
                      : PreferredSize(
                          preferredSize: Size.fromHeight(55.h),
                          child: BlocBuilder<SearchBloc, SearchState>(
                            builder: (context, state) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSpacing.horizontalSpacing),
                                child: SearchBar(
                                  backgroundColor: WidgetStateProperty.all(
                                    AppColors.shadowColor,
                                  ),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  elevation: WidgetStateProperty.all(0),
                                  leading: SvgPicture.asset(
                                    'assets/svg/search.svg',
                                    color: AppColors.primaryColor,
                                  ),
                                  controller: _controller,
                                  onChanged: (query) {
                                    context.read<SearchBloc>().add(
                                        SearchEvent.onSearchQueryChanged(
                                            query));
                                    context
                                        .read<SearchBloc>()
                                        .add(const SearchEvent.fetchResult());
                                  },
                                  onTapOutside: (event) {
                                    context
                                        .read<SearchBloc>()
                                        .add(const SearchEvent.cancel());
                                  },
                                  onSubmitted: (_) {
                                    context
                                        .read<SearchBloc>()
                                        .add(const SearchEvent.fetchResult());
                                  },
                                  hintText:
                                      'Search for students, teachers, classes...',
                                ),
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
                    controller: _scrollController,
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
                return const NoDataAvailable(
                  height: 0,
                  message: 'No results found.',
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

  Widget _showPlaceHolder() {
    final role = context.read<AuthBloc>().state.user?.role;

    if (role == 'parent') {
      return SvgPicture.asset(
        'assets/svg/parent.svg',
        width: 20.fontSize,
        height: 30.fontSize,
      );
    } else if (role == 'teacher') {
      return const Icon(Icons.person);
    } else {
      return SvgPicture.asset(
        'assets/svg/admin_icon.svg',
        width: 20.fontSize,
        height: 30.fontSize,
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
  String? selectedRelation; // Store selected relation
  await showDialog<void>(
    context: context,
    builder: (dialogContext) {
      return BlocListener<SendRequestBloc, SendRequestState>(
        listener: (context, state) {
          logInfo(' state.errorMessage: ${state.errorMessage}');
          if (state.requestAccessToWardStatus ==
              FormzSubmissionStatus.failure) {
            ToastService.toast(
              state.errorMessage ?? 'Something went wrong.',
              ToastType.error,
            );
          }
          if (state.requestAccessToWardStatus ==
              FormzSubmissionStatus.success) {
            ToastService.toast('Request sent successfully to admin');
            Navigator.of(dialogContext).pop();
          }
        },
        child: BlocBuilder<SendRequestBloc, SendRequestState>(
          builder: (context, state) {
            return ConnectWardDialog(
              studentName: studentName,
              schoolName: schoolName,
              className: className,
              busy: state.requestAccessToWardStatus ==
                  FormzSubmissionStatus.inProgress,
              onRelationSelected: (relation) {
                selectedRelation = relation;
              },
              onTap: () {
                if (selectedRelation == null) {
                  ToastService.toast(
                      'Please select a relationship', ToastType.warning);
                  return;
                }
                context.read<SendRequestBloc>().add(
                    SendRequestEvent.sendRequest(studentId, selectedRelation!));
              },
            );
          },
        ),
      );
    },
  );
}
