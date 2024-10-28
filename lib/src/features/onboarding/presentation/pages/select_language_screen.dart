import 'package:edumake_frontend/src/core/constants/app_spacing.dart';
import 'package:edumake_frontend/src/core/extentions/context_extention.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/shared/services/locale_service.dart';
import 'package:edumake_frontend/src/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  static const routeName = 'select-language-screen';

  @override
  Widget build(BuildContext context) {
    final localeService = Provider.of<LocaleService>(context);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.selectLanguageScreen),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.horizontalSpacing),
        child: Column(
          children: [
            Text(context.localizations.changeLanguage),
            Text(context.localizations.getStarted),
            ListTile(
              title: Text(l10n.changeLanguage),
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
              text: l10n.move,
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
