import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/kyc/kyc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeWebContainer extends StatelessWidget {
  const WelcomeWebContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.horizontalSpacingSmall),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return BlocBuilder<KycBloc, KycState>(
            builder: (context, kycState) {
              return Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome ${state.user?.firstName ?? state.user?.fullName ?? kycState.kycResponse?.data.firstName ?? ''}',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blackColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        Text(
                          state.user?.school?.schoolName ?? '',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceMassive,
                        Expanded(
                          child: Text(
                              'You have a lot of update since the last time you visited.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14,
                                    color: AppColors.blackColor,
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SvgPicture.asset(
                      'assets/svg/admin_icon.svg',
                      width: 20.fontSize,
                      height: 30.fontSize,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
