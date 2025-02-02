import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/users_payment_screens/school_tab/classes_details_screen.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:flutter/material.dart';

class TeacherClassesScreen extends StatelessWidget {
  const TeacherClassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = <String>[
      'Jss 1A',
      'Jss 1B',
      'Jss 1C',
      'Jss 2A',
      'Jss 2B',
      'Jss 2C',
      'Jss 3A',
      'Jss 3B',
      'Jss 3C',
      'Sss 1A',
    ];

    final studentCount = <String>[
      '20',
      '39',
      '40',
      '48',
      '23',
      '39',
      '40',
      '48',
      '23',
      '39',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.classes,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 24.fontSize,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
              ),
        ),

        AppSpacing.verticalSpaceMedium,
        // Classes
        ListView.separated(
          itemCount: classes.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return AppSpacing.verticalSpaceMedium;
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed(
                  ClassDetailsScreen.routeName,
                  arguments: {
                    'className': classes[index],
                    'studentCount': studentCount[index],
                  },
                );
              },
              child: ClassesListTileContainer(
                isProfilePictureEnabled: false,
                title: classes[index],
                trailing: studentCount[index],
              ),
            );
          },
        ),
      ],
    );
  }
}
