import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class SentInvitationsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      headerHeight: 50,
      middle: AutoSizeText(
        LocaleKeys.sent.tr(),
        minFontSize: 8,
        maxLines: 1,
        style: TextStyle(
            fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.white),
      ),
      bodyHeight: 50,
      body: AutoSizeText(
        LocaleKeys.sent.tr(),
        minFontSize: 8,
        maxLines: 1,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.white),
      ),
    );
  }
}
