import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_up.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends HookWidget {
  const SignIn({super.key});

  static const routeName = 'sign-in';

  @override
  Widget build(BuildContext context) {
    // Focus nodes
    final emailNode = useFocusNode();
    final passwordNode = useFocusNode();

    //Controllers
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    // obscure password
    final obscurePassword = useState(true);

    // Form key
    final formKey = useMemoized(GlobalKey<FormState>.new);

    final isBusy = useState(false);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSpacing.verticalSpaceTiny,
              Text(
                'Welcome\nback',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              Text(
                'We are delighted to have you back here.',
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
                    AppSpacing.verticalSpaceMedium,
                    CustomTextFormField(
                      textInputAction: TextInputAction.next,
                      controller: passwordController,
                      focusNode: passwordNode,
                      title: 'Password',
                      hintText: 'Input your preferred password',
                      keyboardType: TextInputType.text,
                      prefixIcon: 'password',
                      obscureText: obscurePassword.value,
                      isPassword: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a valid password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                      onSuffixIconPressed: () =>
                          obscurePassword.value = !obscurePassword.value,
                    ),
                    AppSpacing.verticalSpaceMassive,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot password? ',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 16.fontSize,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Recover Password',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 16.fontSize,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Button(
                      text: 'Sign In',
                      busy: isBusy.value,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // Perform sign in
                        }
                      },
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account with us? ",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 16.fontSize,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(SignUpScreen.routeName);
                          },
                          child: Text(
                            'Sign up',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontSize: 16.fontSize,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primaryColor,
                                ),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpaceHuge,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Divider(
                            color: AppColors.greyColor,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or continue with',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'HelveticaNeueRounded',
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryTextColor,
                                ),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: AppColors.greyColor,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SmallSocialButton(
                          icon: 'small_google',
                        ),
                        AppSpacing.horizontalSpaceMassive,
                        const SmallSocialButton(
                          icon: 'small_facebook',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpaceMassive,
            ],
          ),
        ),
      ),
    );
  }
}

class SmallSocialButton extends StatelessWidget {
  const SmallSocialButton({
    required this.icon,
    super.key,
    this.onPressed,
  });
  final String icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: WidgetStateProperty.all<double>(10),
          enableFeedback: true,
          backgroundColor: WidgetStateProperty.all<Color>(
            AppColors.whiteColor,
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: const BorderSide(color: AppColors.whiteColor),
              borderRadius: BorderRadius.circular(20.radius),
            ),
          ),
        ),
        child: SvgPicture.asset(
          'assets/svg/$icon.svg',
        ),
      ),
    );
  }
}
