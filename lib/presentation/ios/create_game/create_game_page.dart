import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';

import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'widgets/widgets.dart';

class CreateGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayBloc, PlayState>(
      listener: (context, state) {
        if (state is Success) {
          final game = state.game;
          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (game.status == Status.running) {
            context.router.replace(const InGamePageRoute());
          }
        }
      },
      builder: (context, state) {
        return AppPage(
          maxHeight: 918, //806, // TODO
          navigationBar: AppNavigationBar(
            leading: const CancelGameButton(),
            middle: Text(
              LocaleKeys.createGame.tr().toUpperCase(),
            ),
          ),
          child: const CreateGameWidget(),
        );
      },
    );
  }
}
