import 'package:dart_counter/application/in_game/input_area/detailed_key_board/detailed_key_board_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/input_area/widgets/input_row/input_row.dart';
import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/input_area/widgets/key_board_button.dart';

class DetailedKeyBoard extends StatelessWidget {
  const DetailedKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailedKeyBoardBloc>(),
      child: AppColumn(
        spacing: size6(context),
        children: [
           const InputRow(),
          AppRow(
            spacing: size6(context),
            children: [
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '15',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '16',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '17',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '18',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '19',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
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
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '9',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '10',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '11',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '12',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '13',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
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
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '3',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '4',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '5',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '6',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '7',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
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
                  onPressed: () {},
                  fontSize: 18,
                  text: LocaleKeys.check.tr().toUpperCase(),
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '1',
                ),
              ),
              Expanded(
                child: KeyBoardButton(
                  fontSize: 20,
                  onPressed: () {},
                  text: '2',
                ),
              ),
              Expanded(
                flex: 2,
                child: KeyBoardButton(
                  onPressed: () {},
                  child: Image.asset(AppImages.chevronBackNew),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
