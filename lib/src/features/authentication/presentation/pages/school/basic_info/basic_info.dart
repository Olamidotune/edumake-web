import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/school_kyc/school_kyc_bloc.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/basic_info/school_basic_info_desktop.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/basic_info/school_basic_info_mobile.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/subscription.dart';
import 'package:edumake_frontend/src/shared/dialogs/web_school_basic_info_success_dialog.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

class SchoolBasicInfoScreen extends HookWidget {
  const SchoolBasicInfoScreen({
    super.key,
  });

  static const String routeName = 'school-basic-info';

  @override
  Widget build(BuildContext context) {
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final schoolNameController = useTextEditingController();
    final schoolAddressController = useTextEditingController();
    final schoolPhoneNumberEmailAddressController = useTextEditingController();
    final scrollController = useScrollController();

    final firstNameFocusNode = useFocusNode();
    final lastNameFocusNode = useFocusNode();
    final phoneNumberFocusNode = useFocusNode();
    final schoolNameFocusNode = useFocusNode();
    final schoolAddressNameFocusNode = useFocusNode();
    final schoolPhoneNumberNameFocusNode = useFocusNode();

    final formKey = useMemoized(GlobalKey<FormState>.new);

    final isDesktop = ScreenUtil().screenWidth > kMedDesktopWidth;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: RawScrollbar(
        controller: scrollController,
        thumbColor: AppColors.primaryColor.withOpacity(0.4),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: BlocBuilder<SchoolKycBloc, SchoolKycState>(
          buildWhen: (previous, current) {
            return _authBuildWhen(context, previous, current);
          },
          builder: (context, state) {
            return isDesktop
                ? SchoolBasicInfoDesktopView(
                    scrollController: scrollController,
                    formKey: formKey,
                    firstNameController: firstNameController,
                    firstNameFocusNode: firstNameFocusNode,
                    lastNameController: lastNameController,
                    lastNameFocusNode: lastNameFocusNode,
                    phoneNumberController: phoneNumberController,
                    phoneNumberFocusNode: phoneNumberFocusNode,
                    schoolNameController: schoolNameController,
                    schoolNameFocusNode: schoolNameFocusNode,
                    schoolAddressController: schoolAddressController,
                    schoolAddressNameFocusNode: schoolAddressNameFocusNode,
                    schoolPhoneNumberEmailAddressController:
                        schoolPhoneNumberEmailAddressController,
                    schoolPhoneNumberNameFocusNode:
                        schoolPhoneNumberNameFocusNode,
                    state: state)
                : SchoolBasicInfoMobileView(
                    scrollController: scrollController,
                    formKey: formKey,
                    firstNameController: firstNameController,
                    firstNameFocusNode: firstNameFocusNode,
                    lastNameController: lastNameController,
                    lastNameFocusNode: lastNameFocusNode,
                    phoneNumberController: phoneNumberController,
                    phoneNumberFocusNode: phoneNumberFocusNode,
                    schoolNameController: schoolNameController,
                    schoolNameFocusNode: schoolNameFocusNode,
                    schoolAddressController: schoolAddressController,
                    schoolAddressNameFocusNode: schoolAddressNameFocusNode,
                    schoolPhoneNumberEmailAddressController:
                        schoolPhoneNumberEmailAddressController,
                    schoolPhoneNumberNameFocusNode:
                        schoolPhoneNumberNameFocusNode,
                    state: state,
                  );
          },
        ),
      ),
    );
  }

  bool _authBuildWhen(
    BuildContext context,
    SchoolKycState previous,
    SchoolKycState current,
  ) {
    if (previous.schoolKycStatus == FormzSubmissionStatus.inProgress &&
        current.schoolKycStatus == FormzSubmissionStatus.success) {
      ScreenUtil().screenWidth > kMedDesktopWidth && kIsWeb
          ? Navigator.of(context).pushNamed(SchoolSubscriptionScreen.routeName)
          : _showWebSchoolBasicInfoSuccessDialog(context);
      return false;
    } else if (previous.schoolKycStatus == FormzSubmissionStatus.inProgress &&
        current.schoolKycStatus == FormzSubmissionStatus.failure) {
      ToastService.toast(
        current.errorMessage ?? 'An error occurred',
        ToastType.error,
      );
      return true;
    }
    return true;
  }

  void _showWebSchoolBasicInfoSuccessDialog(BuildContext context) async {
    await showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const WebSchoolBasicInfoSuccessDialog(
          titleText: 'Your details have been submitted successfully',
          text: 'Login via Edumake webapp to onboarding process',
        );
      },
    );
  }
}
