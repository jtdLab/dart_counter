import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/language_card/language_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      headerHeight: 50,
      middle: AutoSizeText(
        LocaleKeys.language.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: AppColors.white,
        ),
      ),
      bodyHeight: 200,
      body: Column(
        children: [
          const Spacer(),
          Expanded(
            child: const LanguageItem(
              language: Locale('de'),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: const LanguageItem(
              language: Locale('en'),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
