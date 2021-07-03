import 'package:dart_counter/application/in_game/input_area/input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
// TODO shared import
import 'package:dart_counter/presentation/ios/in_game/widgets/in_game_widget/widgets/input_area/widgets/key_board/widgets/key_board_button.dart';
import 'widgets/widgets.dart';

class DetailedKeyBoard extends StatelessWidget {
  const DetailedKeyBoard({
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
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '15',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '16',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '17',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '18',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '19',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '20',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '9',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '10',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '11',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '12',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '13',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '14',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '3',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '4',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '5',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '6',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '7',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '8',
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              flex: 2,
              child: KeyBoardButton(
                onPressed: () => context
                    .read<InputAreaBloc>()
                    .add(const InputAreaEvent.checkPressed()),
                fontSize: 18,
                text: LocaleKeys.check.tr().toUpperCase(),
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '1',
              ),
            ),
            Expanded(
              child: DetailedKeyBoardButton(
                onPressed: () {},
                text: '2',
              ),
            ),
            Expanded(
              flex: 2,
              child: KeyBoardButton(
                onPressed: () => context
                    .read<InputAreaBloc>()
                    .add(const InputAreaEvent.erasePressed()),
                child: Image.asset(AppImages.chevron_back_new),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
