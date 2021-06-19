import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_number_picker.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/dartbot_card.dart/widgets/check_box.dart';

import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class DartBotCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true, // TODO only if offline game
      child: AppCard(
        leading: AutoSizeText(
          LocaleKeys.dartBot.tr().toUpperCase(),
          minFontSize: 8,
          maxFontSize: 14,
          maxLines: 1,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
        trailing: const CheckBox(),
        children: [
          AppNumberPicker(
            title: LocaleKeys.dartbotAverrage.tr().toUpperCase(),
          ),
        ],
      ),
    );
  }
}
