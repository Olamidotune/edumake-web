import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/student_details_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ClassStudentsScreen extends StatelessWidget {
  const ClassStudentsScreen({super.key});

  static const String routeName = '/class-students';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final className = args['className'];

    final scrollController = ScrollController();

    final studentName = <String>[
      'John Doe',
      'Donald Trump',
      'Barrack Obama',
      'Joe Biden',
      'Kamala Harris',
      'Nancy Pecos',
      'Hillary Clinton',
      'George Bush',
      'Bill Clinton',
      'Bernie Sanders',
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomRawScroller(
          scrollController: scrollController,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Text(
                              '$className ${AppStrings.students} ',
                              style: TextStyle(
                                  fontSize: 24.fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackColor,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                          Expanded(
                            child: Container(
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
                      AppSpacing.verticalSpaceMedium,
                      // Students
                      ListView.separated(
                        itemBuilder: (context, index) {
                          return ClassesListTileContainer(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                StudentDetailsScreen.routeName,
                                arguments: {
                                  'className': className,
                                  'studentName': studentName[index],
                                  'schoolName': context
                                      .read<AuthBloc>()
                                      .state
                                      .school
                                      ?.schoolName,
                                },
                              );
                            },
                            isProfilePictureEnabled: true,
                            title: studentName[index],
                            subTitle: context
                                    .read<AuthBloc>()
                                    .state
                                    .school
                                    ?.schoolName ??
                                '',
                          );
                        },
                        separatorBuilder: (context, index) {
                          return AppSpacing.verticalSpaceMedium;
                        },
                        itemCount: studentName.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                      AppSpacing.verticalSpaceMassive,
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
