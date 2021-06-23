import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/widgets.dart';

class LanguageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        LocaleKeys.language.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: const [
        LanguageItem(
          language: Locale('de'),
        ),
        LanguageItem(
          language: Locale('en'),
        ),
      ],
    );
  }
}
