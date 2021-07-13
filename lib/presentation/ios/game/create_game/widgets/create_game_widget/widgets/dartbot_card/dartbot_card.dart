import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_number_picker.dart';
import 'widgets/widgets.dart';

// TODO abstand wenn kein dartbot zur playercard
class DartBotCard extends StatelessWidget {
  const DartBotCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final game = state.game;
        return Visibility(
          visible: !game.online,
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
            children: game.hasDartBot()
                ? [
                    AppNumberPicker(
                      onChanged: (value) => context.read<CreateGameBloc>().add(
                            CreateGameEvent.dartBotTargetAverageUpdated(
                              newTargetAverage: value,
                            ),
                          ),
                      title: LocaleKeys.dartbotAverrage.tr().toUpperCase(),
                    ),
                  ]
                : [],
          ),
        );
      },
    );
  }
}