import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/game/cancel_game_button.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/input_area.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/player_displayer.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class InGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayBloc, PlayState>(
      listener: (context, state) {
        if (state is Success) {
          final game = state.game;
          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (game.status == Status.finished) {
            context.router.replace(const PostGamePageRoute());
          }
        }
      },
      builder: (context, state) {
        return AppPage(
          navigationBar: AppNavigationBar(
            leading: const CancelGameButton(),
            middle: Text(
              'Best of 5 Legs'.toUpperCase(),
            ),
            trailing: AppNavigationBarButton(
              onPressed: () {},
              child: Image.asset(
                AppImages.stats_new,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlayerDisplayer(),
              // TODO
              InputArea(
                onCheckPressed: () {},
                onDigitPressed: (digit) {},
                onDoPressed: () {},
                onEreasePressed: () {},
                onUndoPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
