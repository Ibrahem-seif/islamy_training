import 'package:flutter/material.dart';
import 'package:islamy_training/core/colors_manger.dart';
import 'package:islamy_training/presentation/screens/home/settings/widgets/language_bottom_sheet.dart';
import 'package:islamy_training/presentation/screens/home/settings/widgets/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          InkWell(
            onTap: () => showThemeBottomSheet(context),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManger.goldColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          InkWell(
            onTap: () => showLanguageBottomSheet(context),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManger.goldColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          const Spacer(flex: 10),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => const ThemeBottomSheet());
  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context, builder: (context) => const LanguageBottomSheet());
}
