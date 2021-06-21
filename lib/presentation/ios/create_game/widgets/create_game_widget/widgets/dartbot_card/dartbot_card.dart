import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/widgets.dart';

// TODO abstand wenn kein dartbot zur playercard
class DartBotCard extends StatelessWidget {
  const DartBotCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;
            return Visibility(
              visible: !success.online,
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
                          onChanged: (value) => context.read<PlayBloc>().add(
                                PlayEvent.dartBotTargetAverageSet(
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
          orElse: () => Container(), // TODO
        );
      },
    );
  }
}