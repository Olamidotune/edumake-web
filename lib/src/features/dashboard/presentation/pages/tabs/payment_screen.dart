import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/constants/enum/role_enum.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/services/shared_prefercences.dart';
import 'package:edumake_frontend/src/shared/widgets/classes_list_tile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  static const String routeName = 'payment';

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final ScrollController scrollController = ScrollController();
  late Future<UserRole> userRoleFuture;

  @override
  void initState() {
    super.initState();
    userRoleFuture = userRole();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RawScrollbar(
          controller: scrollController,
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
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
              child: buildView(
                userRoleFuture,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildView(
    Future<UserRole> userRoleFuture,
  ) {
    return FutureBuilder<UserRole>(
      future: userRoleFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error occurred while loading data'),
          );
        }

        final role = snapshot.data;

        if (role == UserRole.parentStudent) {
          return const Center(child: Text('Parent Student'));
        } else if (role == UserRole.teacher) {
          return const Center(child: Text('Teacher'));
        }
        return const ClassScreen();
      },
    );
  }
}

Future<UserRole> userRole() async {
  final role = await UserRoleHelper.getUserRole();
  return role ?? UserRole.parentStudent;
}

class ClassScreen extends StatelessWidget {
  const ClassScreen({super.key});

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.classes,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16.fontSize,
                    fontWeight: FontWeight.bold,
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
                  'assets/svg/plus.svg',
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
                
              },
              child: ClassesListTileContainer(
                classes: classes[index],
                studentCount: studentCount[index],
              ),
            );
          },
        ),
        AppSpacing.verticalSpaceMassive,
      ],
    );
  }
}
