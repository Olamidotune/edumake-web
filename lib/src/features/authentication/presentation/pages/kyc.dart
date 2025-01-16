import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/bloc/kyc/kyc_bloc.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/dashboard.dart';
import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

class KycScreen extends HookWidget {
  const KycScreen({super.key});
  static const routeName = 'kyc-screen';

  @override
  Widget build(BuildContext context) {
    final firstNameNode = useFocusNode();
    final lastNameNode = useFocusNode();
    final phoneNumberNode = useFocusNode();
    final ninNode = useFocusNode();

    //Controllers
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final ninController = useTextEditingController();

    // Form key
    final formKey = useMemoized(GlobalKey<FormState>.new);

    final isBusy = useState(false);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(
          AppSpacing.horizontalSpacing,
        ),
        child: SingleChildScrollView(
          child: BlocBuilder<KycBloc, KycState>(
            buildWhen: (previous, current) {
              return _authBuildWhen(context, previous, current);
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'One More\nStep',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 32.fontSize,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'We need to know some basic information about you, we use this data to ensure your wards’ academic data are kept save. Please, use same data that your wards’ school are familiar with to avoid any misunderstanding.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w300,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          prefixIcon: 'profile',
                          controller: firstNameController,
                          focusNode: firstNameNode,
                          title: 'First Name',
                          hintText: 'Enter your first name',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          onChanged: (value) {
                            context.read<KycBloc>().add(
                                  KycEvent.firstNameChanged(value),
                                );
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'First name is required';
                            }
                            return null;
                          },
                          onFieldSubmitted: () {
                            firstNameNode.unfocus();
                            lastNameNode.requestFocus();
                          },
                        ),
                        AppSpacing.verticalSpaceMedium,
                        CustomTextFormField(
                          prefixIcon: 'profile',
                          controller: lastNameController,
                          focusNode: lastNameNode,
                          title: 'Last Name',
                          hintText: 'Enter your last name',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          onChanged: (value) {
                            context.read<KycBloc>().add(
                                  KycEvent.lastNameChanged(value),
                                );
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Last name is required';
                            }
                            return null;
                          },
                          onFieldSubmitted: () {
                            lastNameNode.unfocus();
                            phoneNumberNode.requestFocus();
                          },
                        ),
                        AppSpacing.verticalSpaceMedium,
                        CustomTextFormField(
                          prefixIcon: 'phone',
                          controller: phoneNumberController,
                          focusNode: phoneNumberNode,
                          maxLength: 11,
                          title: 'Phone Number',
                          hintText: 'Enter your phone number',
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          onChanged: (value) {
                            context.read<KycBloc>().add(
                                  KycEvent.phoneNumberChanged(value),
                                );
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Phone number is required';
                            }
                            return null;
                          },
                          onFieldSubmitted: () {
                            phoneNumberNode.unfocus();
                            ninNode.requestFocus();
                          },
                        ),
                        AppSpacing.verticalSpaceMedium,
                        CustomTextFormField(
                          prefixIcon: 'scan',
                          controller: ninController,
                          maxLength: 11,
                          focusNode: ninNode,
                          title: 'National Identification Number (NIN)',
                          hintText: 'Enter your NIN/NIA',
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          onChanged: (value) {
                            context.read<KycBloc>().add(
                                  KycEvent.ninChanged(value),
                                );
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'NIN is required';
                            }
                            return null;
                          },
                          onFieldSubmitted: ninNode.unfocus,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height <
                                  kMinSupportedHeight
                              ? 20.height
                              : .1.sh,
                        ),
                        AppSpacing.horizontalSpaceMedium,
                        Button(
                          busy: state.kycStatus ==
                              FormzSubmissionStatus.inProgress,
                          text: 'Submit',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              isBusy.value = true;
                              context.read<KycBloc>().add(
                                    const KycEvent.submitKyc(),
                                  );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  bool _authBuildWhen(
    BuildContext context,
    KycState previous,
    KycState current,
  ) {
    if (previous.kycStatus == FormzSubmissionStatus.inProgress &&
        current.kycStatus == FormzSubmissionStatus.success) {
      if (current.user?.hasOnboarded == false) {
        ToastService.toast('Sign in successful');
        Navigator.of(context).popAndPushNamed(Dashboard.routeName);
        return false;
      }
    } else if (previous.kycStatus == FormzSubmissionStatus.inProgress &&
        current.kycStatus == FormzSubmissionStatus.failure) {
      ToastService.toast(
        current.errorMessage ?? 'An error occurred',
        ToastType.error,
      );
      return true;
    }
    return true;
  }
}
