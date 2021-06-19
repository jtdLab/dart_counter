import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/game_settings_card/widgets/mode_picker.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/game_settings_card/widgets/starting_points_picker.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/widgets/game_settings_card/widgets/type_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/size_picker.dart';

class GameSettingsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        LocaleKeys.modus.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        const StartingPointsPicker(),
        const ModePicker(),
        const SizePicker(),
        const TypePicker(),
      ],
    );
  }
}
