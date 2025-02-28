import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/get_school_data/get_school_data_bloc.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_big_text_form_field.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:edumake_frontend/src/shared/widgets/multiclass_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCurriculumScreen extends StatefulWidget {
  const AddCurriculumScreen({super.key});
  static const String routeName = '/add_curriculum_screen';

  @override
  State<AddCurriculumScreen> createState() => _AddCurriculumScreenState();
}

class _AddCurriculumScreenState extends State<AddCurriculumScreen> {
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final textController = TextEditingController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add a Scheme of Work/Curriculum',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 24.fontSize,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                    ),
              ),
              AppSpacing.verticalSpaceMedium,
              CustomRawScroller(
                scrollController: scrollController,
                child: BlocBuilder<GetSchoolDataBloc, GetSchoolDataState>(
                  builder: (context, getSchoolState) {
                    return Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            AppStrings.subject,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: AppColors.blackColor,
                                  fontSize: 16.fontSize,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        MultiClassDropdown(
                          classes: getSchoolState.classesData!,
                          onClassesSelected: (selectedClassIds) {
                            setState(() {
                              // selectedClassId = selectedClassIds;
                            });
                          },
                        ),
                        AppSpacing.verticalSpaceMedium,
                        CustomBigTextFormField(
                          header: 'Curriculum Text',
                          controller: textController,
                        ),
                        AppSpacing.verticalSpaceMassive,
                        Button(
                          text: AppStrings.upload,
                          onPressed: () {},
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
