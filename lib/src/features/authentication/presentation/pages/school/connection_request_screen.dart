import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/widgets/connection_request_list_tile.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ConnectionRequestScreen extends StatefulWidget {
  const ConnectionRequestScreen({super.key});

  static const String routeName = 'connectionRequest_screen';

  @override
  State<ConnectionRequestScreen> createState() =>
      _ConnectionRequestScreenState();
}

class _ConnectionRequestScreenState extends State<ConnectionRequestScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: AppColors.primaryColor.withOpacity(0.4),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
                vertical: AppSpacing.verticalValueMedium,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.connectionResquest,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryTexColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    AppStrings.connectionResquestWarning,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                   Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            top: AppSpacing.verticalValueSmall,
            left: AppSpacing.horizontalSpacing,
            right: AppSpacing.horizontalSpacing,
          ),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.separated(
            itemCount: 15,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  
                },
                child: const ConnectionRequestListTile(
                  titleName: 'Kamala Harris',
                  subTitleName: 'Donald Trump',
                  profilePic: null,
                  date: 'Today 4:20',
                  className: 'JSS 1',
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: AppColors.greyColor,
                thickness: 1,
              );
            },
          ),
        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class ConnectionRequestDetailsScreen extends StatefulWidget {
  const ConnectionRequestDetailsScreen({super.key});

  static const String routeName = 'connectionRequestDetails_Screen';

  @override
  State<ConnectionRequestDetailsScreen> createState() => _ConnectionRequestDetailsScreenState();
}

class _ConnectionRequestDetailsScreenState extends State<ConnectionRequestDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
