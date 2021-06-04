import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_row.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/key_board/widgets/key_board_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class KeyBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        AppRow(
          spacing: size6(context),
          children: [
            const Expanded(
              child: KeyBoardButton(
                text: '1',
              ),
            ),
            const Expanded(
              child: KeyBoardButton(
                text: '2',
              ),
            ),
            const Expanded(
              child: KeyBoardButton(
                text: '3',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            const Expanded(
              child: KeyBoardButton(
                text: '4',
              ),
            ),
            const Expanded(
              child: KeyBoardButton(
                text: '5',
              ),
            ),
            const Expanded(
              child: KeyBoardButton(
                text: '6',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            const Expanded(
              child: KeyBoardButton(
                text: '7',
              ),
            ),
            const Expanded(
              child: KeyBoardButton(
                text: '8',
              ),
            ),
            const Expanded(
              child: KeyBoardButton(
                text: '9',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: KeyBoardButton(
                fontSize: 18,
                text: LocaleKeys.check.tr().toUpperCase(),
              ),
            ),
            const Expanded(
              child: KeyBoardButton(
                text: '0',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                child: Image.asset(AppImages.chevron_back_new),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
