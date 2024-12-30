import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/screen_sizes.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends HookWidget {
  const ForgotPasswordScreen({super.key});
  static const routeName = 'forgot-password-screen';

  @override
  Widget build(BuildContext context) {
    final emailNode = useFocusNode();
    final emailController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final isBusy = useState(false);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.verticalSpaceTiny,
              Text(
                'Stay Calm',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              Text(
                'We will recover your password in no time. It happens to the best of us. Kindly provide the email address associated to this account.',
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
                      textInputAction: TextInputAction.next,
                      controller: emailController,
                      focusNode: emailNode,
                      title: 'Email Address',
                      hintText: 'Enter your preferred email address',
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: 'email',
                      validator: (value) {
                        if (EmailValidator.validate(value?.trim() ?? '')) {
                          return null;
                        }
                        return 'Please enter a valid email address';
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height <
                              kMinSupportedHeight
                          ? .45.sh
                          : .56.sh,
                    ),
                    Button(
                      busy: isBusy.value,
                      text: 'Submit',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
