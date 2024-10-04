import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});

  static const routeName = 'sign-up-screen';

  @override
  Widget build(BuildContext context) {
    // Focus nodes
    final emailNode = useFocusNode();
    final passwordNode = useFocusNode();
    final confirmPasswordNode = useFocusNode();

    //Controllers
    final passwordController = useTextEditingController();
    final emailController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    // obscure password
    final obscurePassword = useState(true);
    final obscureConfirmPassword = useState(true);

    // Form key
    final formKey = useMemoized(GlobalKey<FormState>.new);

    final isBusy = useState(false);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSpacing.verticalSpaceTiny,
              Text(
                'Sign Up to \nEdu-Make',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 32.fontSize,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              AppSpacing.verticalSpaceSmall,
              Text(
                'Welcome, we are delighted to have you here.',
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
                  ],
                ),
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
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
                onSuffixIconPressed: () =>
                    obscurePassword.value = !obscurePassword.value,
              ),
              AppSpacing.verticalSpaceMedium,
              CustomTextFormField(
                textInputAction: TextInputAction.go,
                controller: confirmPasswordController,
                focusNode: confirmPasswordNode,
                title: 'Confirm Password',
                hintText: 'Input your preferred password',
                keyboardType: TextInputType.text,
                prefixIcon: 'password',
                obscureText: obscureConfirmPassword.value,
                isPassword: true,
                validator: (value) {
                  if (value!.isEmpty || value.length < 6) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
                onSuffixIconPressed: () => obscureConfirmPassword.value =
                    !obscureConfirmPassword.value,
              ),
              AppSpacing.verticalSpaceLarge,
              Button(
                text: 'Sign Up',
                busy: isBusy.value,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    isBusy.value = true;
                    Future.delayed(const Duration(seconds: 10), () {
                      print("object");
                      isBusy.value = false;
                    });
                  }
                },
              ),
              AppSpacing.verticalSpaceMedium,
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account with us? ',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 13.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                    children: [
                      TextSpan(
                        text: 'Sign in',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: '',
                              fontSize: 13.fontSize,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.controller,
    required this.focusNode,
    required this.title,
    required this.hintText,
    required this.keyboardType,
    this.prefixIcon,
    super.key,
    this.obscureText = false,
    this.isPassword = false,
    this.isFilled = true,
    this.validator,
    this.textInputAction,
    this.onSuffixIconPressed,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? prefixIcon;
  final bool isPassword;
  final bool isFilled;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final void Function()? onSuffixIconPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ),
        AppSpacing.verticalSpaceSmall,
        TextFormField(
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14.fontSize,
                color: AppColors.primaryTextColor,
              ),
          focusNode: focusNode,
          textInputAction: textInputAction,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            fillColor: AppColors.greyColor.withOpacity(0.1),
            filled: isFilled,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.fontSize,
                  color: AppColors.greyColor,
                ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset(
                'assets/svg/$prefixIcon.svg',
                color: AppColors.greyColor.withOpacity(1),
              ),
            ),
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.greyColor,
                    ),
                    onPressed: onSuffixIconPressed,
                  )
                : null,
          ),
          obscureText: obscureText,
          validator: validator,
        ),
      ],
    );
  }
}
