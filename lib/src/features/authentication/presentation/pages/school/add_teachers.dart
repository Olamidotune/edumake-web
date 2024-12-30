import 'dart:io';

import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/num_extention.dart';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/school/widgets/school_drop_down_form.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_snackbar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_text_form_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddTeachersScreen extends StatefulWidget {
  const AddTeachersScreen({super.key});

  static const String routeName = '/add-teachers';

  @override
  State<AddTeachersScreen> createState() => _AddTeachersScreenState();
}

final ScrollController _scrollController = ScrollController();
final FocusNode nameFocusNode = FocusNode();
final FocusNode emailFocusNode = FocusNode();
final TextEditingController nameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final formKey = GlobalKey<FormState>();
bool isBusy = false;
File? imageFile;

class _AddTeachersScreenState extends State<AddTeachersScreen> {
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
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.horizontalSpacing,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Teachers',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryTextColor,
                        ),
                  ),
                  AppSpacing.verticalSpaceSmall,
                  Text(
                    'Fill in all inputs to complete teachers invitation.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'HelveticaNeueRounded',
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w300,
                          color: AppColors.primaryTextColor,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  AppSpacing.verticalSpaceMassive,
                  Center(
                    child: GestureDetector(
                      onTap: _insertImage,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.1),
                        child: imageFile != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image.file(
                                  File(imageFile!.path),
                                  width: 160,
                                  height: 160,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/camera.svg',
                                    height: 50.fontSize,
                                    color:
                                        AppColors.blackColor.withOpacity(0.6),
                                  ),
                                  Text(
                                    'Insert Image',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontFamily: 'HelveticaNeueRounded',
                                          fontSize: 13.fontSize,
                                          fontWeight: FontWeight.w300,
                                          color: AppColors.primaryTextColor,
                                        ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpaceLarge,
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          controller: nameController,
                          focusNode: nameFocusNode,
                          hintText: 'Enter Name',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          title: "Teacher's Name",
                          customFilled: true,
                          validator: (value) {
                            if (value?.trim().isNotEmpty ?? false) {
                              return null;
                            }
                            return 'Please enter a valid name';
                          },
                          editIcon: SvgPicture.asset(
                            'assets/svg/edit.svg',
                            height: 10,
                          ),
                        ),
                        AppSpacing.verticalSpaceLarge,
                        Text(
                          'Subject(s) in charge',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        const SchoolDropDownFormWidget(
                          hintText: 'Select Subject',
                        ),
                        AppSpacing.verticalSpaceLarge,
                        Text(
                          'Classes taught by teacher',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontFamily: 'HelveticaNeueRounded',
                                    fontSize: 14.fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primaryTextColor,
                                  ),
                        ),
                        AppSpacing.verticalSpaceSmall,
                        const SchoolDropDownFormWidget(
                          hintText: 'Select Classes',
                        ),
                        AppSpacing.verticalSpaceLarge,
                        CustomTextFormField(
                          controller: emailController,
                          focusNode: emailFocusNode,
                          hintText: 'Enter Email',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          title: "Teacher's Email",
                          customFilled: true,
                          validator: (value) {
                            if (EmailValidator.validate(value?.trim() ?? '')) {
                              return null;
                            }
                            return 'Please enter a valid email address';
                          },
                          editIcon: SvgPicture.asset(
                            'assets/svg/edit.svg',
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceMassive,
                  Button(
                    busy: isBusy,
                    text: 'Send Invite',
                    onPressed: () {
                      if (formKey.currentState!.validate() &&
                          imageFile != null) {
                        _sendInvite();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _insertImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      setState(() {
        imageFile = File(result.files.single.path!);
      });
      CustomSnackbar.show(context, 'Image selected successfully');
      debugPrint(imageFile?.path);
    } else {
      CustomSnackbar.show(context, 'No file selected', isError: true);
      // User canceled the picker
    }
  }

  Future<void> _sendInvite() async {
    setState(() {
      isBusy = true;
    });
    await Future<void>.delayed(const Duration(seconds: 2));
    CustomSnackbar.show(context, 'Invite sent successfully');
    Navigator.pop(context, true);
    setState(() {
      isBusy = false;
    });
  }
}
