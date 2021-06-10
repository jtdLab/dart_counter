import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_row.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/key_board/widgets/key_board_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class KeyBoard extends StatelessWidget {
  final VoidCallback onCheckPressed;
  final VoidCallback onEreasePressed;
  final Function(int) onDigitPressed;

  const KeyBoard({
    Key? key,
    required this.onCheckPressed,
    required this.onEreasePressed,
    required this.onDigitPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(1),
                text: '1',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(2),
                text: '2',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(3),
                text: '3',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(4),
                text: '4',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(5),
                text: '5',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(6),
                text: '6',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(7),
                text: '7',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(8),
                text: '8',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(9),
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
                onPressed: onCheckPressed,
                fontSize: 18,
                text: LocaleKeys.check.tr().toUpperCase(),
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => onDigitPressed(0),
                text: '0',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: onEreasePressed,
                child: Image.asset(AppImages.chevron_back_new),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
