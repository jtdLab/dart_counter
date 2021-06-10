import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_number_picker.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class GameSettingsCard extends StatelessWidget {
  final int startingPoints;
  final Function(int) onStartingPointsChanged;
  final Mode mode;
  final Function(Mode) onModeChanged;
  final int size;
  final Function(int) onSizeChanged;
  final Type type;
  final Function(Type) onTypeChanged;

  const GameSettingsCard({
    Key? key,
    required this.startingPoints,
    required this.onStartingPointsChanged,
    required this.mode,
    required this.onModeChanged,
    required this.size,
    required this.onSizeChanged,
    required this.type,
    required this.onTypeChanged,
  }) : super(key: key);

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
        _sizeRow(context),
        _modeRow(context),
        AppCardItem.large(
          content: AppNumberPicker(),
        ),
        _typeRow(context),
      ],
    );
  }

  Widget _sizeRow(BuildContext context) => AppRow(
        spacing: size6(context),
        children: [
          Expanded(
            child: AppActionButton.normal(
              onPressed: () {},
              text: '301',
            ),
          ),
          Expanded(
            child: AppActionButton.normal(
              color: AppColors.white,
              onPressed: () {},
              text: '501',
            ),
          ),
          Expanded(
            child: AppActionButton.normal(
              color: AppColors.white,
              onPressed: () {},
              text: '701',
            ),
          ),
        ],
      );

  Widget _modeRow(BuildContext context) => AppRow(
        spacing: size6(context),
        children: [
          Expanded(
            child: AppActionButton.normal(
              onPressed: () {},
              text: 'FIRST TO',
            ),
          ),
          Expanded(
            child: AppActionButton.normal(
              color: AppColors.white,
              onPressed: () {},
              text: 'BEST OF',
            ),
          ),
        ],
      );

  Widget _typeRow(BuildContext context) => AppRow(
        spacing: size6(context),
        children: [
          Expanded(
            child: AppActionButton.normal(
              onPressed: () {},
              text: 'LEGS',
            ),
          ),
          Expanded(
            child: AppActionButton.normal(
              color: AppColors.white,
              onPressed: () {},
              text: 'SETS',
            ),
          ),
        ],
      );
}
