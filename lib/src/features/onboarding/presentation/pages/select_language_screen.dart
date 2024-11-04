import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/constants/app_strings.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/shared/services/locale_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  static const routeName = 'select-language-screen';

  @override
  Widget build(BuildContext context) {
    final localeService = Provider.of<LocaleService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.selectLanguageScreen),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: Column(
          children: [
            const Text(AppStrings.changeLanguage),
            const Text(AppStrings.getStarted),
            ListTile(
              title: const Text(AppStrings.changeLanguage),
              trailing: DropdownButton<String>(
                value: localeService.locale.languageCode,
                items: const [
                  DropdownMenuItem(
                    value: 'en',
                    child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: 'fr',
                    child: Text('Français'),
                  ),
                ],
                onChanged: (String? value) {
                  if (value != null) {
                    localeService.setLocale(Locale(value));
                  }
                },
              ),
            ),
            Button(
              text: AppStrings.move,
              onPressed: () {
                Navigator.of(context).pushNamed(OnboardingScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
