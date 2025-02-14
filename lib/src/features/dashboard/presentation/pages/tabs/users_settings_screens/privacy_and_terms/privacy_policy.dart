import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_app_bar.dart';
import 'package:edumake_frontend/src/shared/widgets/custom_raw_scroller.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  static const String routeName = 'privacy_screen';

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
                  AppStrings.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 24.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'Updated on Jan 31, 2025',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                const Divider(),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'Edu-Make (“we,” “us,” or “our”) is committed to protecting the privacy and security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect the information you provide through our advanced school management system platform. By using Edu-Make, you consent to the practices described in this policy.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '1. Information We Collect',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'We collect the following types of information:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  'a. Personal Information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  'When you register, access, or use our services, we may collect personal information, including but not limited to:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  '• Name\n• Email address\n• Phone number\n• Address\n• Date of birth\n• Student, teacher, or staff ID numbers\n• Parent/guardian contact information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  'b. Educational Information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  'For school administration purposes, we may collect academic and educational data, including:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  '• Student grades, attendance records, and assignments\n• Teacher reports and evaluations\n• Classroom schedules and extracurricular activities',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  'c. Technical Information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  'We may automatically collect technical information when you use Edu-Make, such as:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  '• IP addresses\n• Device identifiers\n• Browser type\n• Operating system\n• Cookies and usage data (browsing history, log files)',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  'd. Payment Information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  'For parents who use our platform to make school fee payments, we collect payment details, including credit card numbers, billing addresses, and transaction data.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '2. How We Use Your Information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'We use the information collected for the following purposes:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  '• To manage and maintain the educational and administrative functions of schools\n• To enable communication between students, parents, teachers, and school staff\n• To process attendance records, grades, and academic performance\n• To improve user experience and optimize our platform\n• To ensure the security and integrity of data',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '3. Sharing and Disclosure of Information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'Edu-Make does not sell or rent personal information. We may disclose your information in the following circumstances:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  '• With schools and educational institutions that are registered on Edu-Make for administrative purposes\n• With trusted third-party service providers who assist us in operating the platform, provided they comply with our privacy and security standards\n• To comply with legal obligations, such as responding to lawful requests by public authorities or in connection with any legal proceedings\n• In case of a merger, acquisition, or sale of assets, where your information may be transferred as part of the transaction\n• Third-party payment processors or other service providers that assist us in operating our app and processing payments.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '4. Data Security',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'How We Protect Your Information',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  'We take the security of your information seriously and implement industry-standard measures to protect your data, including:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  '• Encryption: All sensitive information, including payment details, is encrypted during transmission using Secure Socket Layer (SSL) technology.\n• Access Control: We limit access to personal information to authorized personnel who need it to perform their roles.\n• Data Security: We use firewalls, encryption protocols, and secure servers to protect your data from unauthorized access, alteration, disclosure, or destruction.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '5. Data Retention',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'Edu-Make will retain personal information for as long as necessary to fulfill the purposes outlined in this Privacy Policy, or as required by applicable laws and regulations.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '6. Your Rights and Choices',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'You have certain rights regarding your personal information, including:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  '• The right to access and review your data\n• The right to request corrections or updates to your data\n• The right to request the deletion of your data, subject to legal and contractual limitations\n• The right to opt-out of communications\n• Request the deletion of your data in compliance with our retention policies.\n• You may withdraw your consent for the processing of your data at any time, though this may affect the functionality of the app.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  'To exercise these rights, please contact us using the information provided below.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '7. Children’s Privacy',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'Edu-Make is designed to serve schools and educational institutions. We do not knowingly collect personal information from children under the age of 13 without parental or guardian consent. If you believe we have collected information from a child without appropriate consent, please contact us, and we will take the necessary steps to delete it.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '8. Third-Party Links',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'Our platform may contain links to third-party websites or services. This Privacy Policy does not apply to those third-party services, and we encourage you to review their privacy policies before providing any personal information.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '9. Changes to This Privacy Policy',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'We may update this Privacy Policy from time to time to reflect changes in our practices or legal requirements. Any updates will be posted on this page, and we will notify you of significant changes via email or through our platform.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  '10. Contact Us',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                ),
                Text(
                  'If you have any questions or concerns about this Privacy Policy or how we handle your personal information, please contact us at:',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                Text(
                  'Edu-Make Support Team\nEmail: support@edu-make.com\nAddress: 11 Lateef Jakande Rd, Beside Chicken Republic, Ist Gate Bus-Stop. Agidingbi, Ikeja',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor,
                      ),
                ),
                AppSpacing.verticalSpaceMedium,
                Text(
                  'By using Edu-Make, you acknowledge that you have read and understand this Privacy Policy.',
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
