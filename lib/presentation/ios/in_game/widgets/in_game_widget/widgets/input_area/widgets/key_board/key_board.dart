import 'package:dart_counter/application/in_game/input_area/key_board/key_board_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({
    Key? key,
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
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 1)),
                text: '1',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 2)),
                text: '2',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 3)),
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
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 4)),
                text: '4',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 5)),
                text: '5',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 6)),
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
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 7)),
                text: '7',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 8)),
                text: '8',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 9)),
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
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.checkPressed()),
                fontSize: 18,
                text: LocaleKeys.check.tr().toUpperCase(),
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.digitPressed(digit: 0)),
                text: '0',
              ),
            ),
            Expanded(
              child: KeyBoardButton(
                onPressed: () => context
                    .read<KeyBoardBloc>()
                    .add(const KeyBoardEvent.erasePressed()),
                child: Image.asset(AppImages.chevron_back_new),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
