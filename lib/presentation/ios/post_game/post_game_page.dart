import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/errors.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class PostGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;

            return AppPage(
              navigationBar: AppNavigationBar(
                middle: Text(
                  game.description().toUpperCase(),
                ),
              ),
              child: const PostGameWidget(),
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}

