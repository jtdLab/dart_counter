import 'package:dart_counter/application/in_game/standard_input_area/standard_input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class StandardKeyBoard extends StatelessWidget {
  const StandardKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 1)),
                text: '1',
              ),
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 2)),
                text: '2',
              ),
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 3)),
                text: '3',
              ),
            ],
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 4)),
                text: '4',
              ),
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 5)),
                text: '5',
              ),
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 6)),
                text: '6',
              ),
            ],
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 7)),
                text: '7',
              ),
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 8)),
                text: '8',
              ),
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 9)),
                text: '9',
              ),
            ],
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.checkPressed()),
                fontSize: 18,
                text: LocaleKeys.check.tr().toUpperCase(),
              ),
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 0)),
                text: '0',
              ),
              KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.erasePressed()),
                child: Image.asset(AppImages.chevronBackNew),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
