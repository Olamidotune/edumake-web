import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  static const String routeName = 'terms_and_conditions_screen';

  @override
  Widget build(BuildContext context) {
    final scrollerController = ScrollController();

    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomRawScroller(
        scrollController: scrollerController,
        child: Padding(
          padding: EdgeInsets.all(
            AppSpacing.horizontalSpacingMedium,
          ),
          child: SingleChildScrollView(
            controller: scrollerController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terms and Conditions',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 24.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'Updated on Jan 31, 2025',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                const Divider(),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'Welcome to Edu-Make, an advanced school management system developed to optimize and streamline educational operations. By accessing or using the Edu-Make platform, you agree to comply with the following terms and conditions. Please read them carefully before using our services.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '1. Acceptance of Terms',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'By creating an account or using Edu-Make, you accept and agree to be bound by these terms and conditions, including any future updates or modifications. If you do not agree to these terms, you may not use the platform.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '2. User Accounts',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• Users are responsible for maintaining the confidentiality of their account login credentials and for all activities occurring under their account.\n• Edu-Make reserves the right to suspend or terminate accounts found in violation of these terms.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '3. Platform Usage',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• Edu-Make is designed for the management of school operations, including attendance, school messaging, student records, and other administrative tasks.\n• Users agree to use the platform solely for its intended purpose and in compliance with all applicable laws.\n• Any misuse, including but not limited to unauthorized access, data breaches, or malicious activities, is strictly prohibited.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '4. Data Privacy and Protection',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• Edu-Make is committed to protecting the privacy of students and staff. Our platform is designed to handle sensitive information, including attendance records, student privacy data, and communications.\n• Users agree to comply with all data privacy regulations applicable in their region, including but not limited to GDPR, FERPA, or any local data protection laws.\n• Edu-Make will not disclose user data to third parties without consent, except where required by law.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '5. Content Ownership and Licensing',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• All content, including but not limited to school data, materials, and records, belongs to the respective educational institutions.\n• By using Edu-Make, schools grant the platform a non-exclusive, royalty-free license to use the data strictly for the purpose of providing the service.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '6. Intellectual Property',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• The Edu-Make platform, including but not limited to software, design, graphics, and logos, is the intellectual property of Edu-Make and protected by copyright laws.\n• Users are prohibited from copying, modifying, distributing, or creating derivative works of Edu-Make’s intellectual property without prior written consent.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '7. Limitation of Liability',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• Edu-Make shall not be held liable for any indirect, incidental, special, or consequential damage arising out of or in connection with the use of the platform.\n• Edu-Make is not responsible for any data loss, breach, or system outages that may affect the performance of the platform.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '8. Warranties',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• Edu-Make provides the platform “as is” and without any warranties, express or implied, regarding its functionality, uptime, or fitness for a particular purpose.\n• While Edu-Make strives to ensure continuous access and functionality, no guarantee is made regarding uninterrupted service.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '9. Termination of Services',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• Edu-Make reserves the right to terminate or suspend any user account without notice in the event of a breach of these terms or misuse of the platform.\n• Users may terminate their account by following the process outlined in the account settings. Upon termination, users will no longer have access to their data unless otherwise specified in a data retention policy.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '10. Amendments to Terms',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  '• Edu-Make reserves the right to modify these terms at any time. Users will be notified of significant changes via email or platform notifications.\n• Continued use of the platform following modifications indicates acceptance of the revised terms.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '11. Governing Law',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'These terms and conditions shall be governed by and construed following the laws of [your jurisdiction], without regard to its conflict of law principles.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '12. Contact Information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'If you have any questions or concerns regarding these terms and conditions, you may contact us at:\n• Email: support@edu-make.com\n• Address: 11 Lateef Jakande Rd, besides Chicken Republic, Ist Gate Bus-Stop. Agidingbi, Ikeja',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '13. Entire Agreement',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'These terms constitute the entire agreement between the user and Edu-Make with respect to the use of the platform and supersede any prior agreements or understandings.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'By using Edu-Make, you acknowledge that you have read, understood, and agreed to these terms and conditions. Thank you for choosing Edu-Make as your trusted school management system.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
