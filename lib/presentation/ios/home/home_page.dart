import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart' hide Router, Orientation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'package:dart_counter/presentation/ios/home/widgets/widgets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<PlayBloc, PlayState>(
      listenWhen: (oldState, newState) => oldState != newState,
      listener: (context, state) {
        state.when(
          inProgress: () {},
          success: (_, __) {
            // TODO maybe add game as initial but or not ?
            context.router.replace(const CreateGamePageRoute());
          },
          failure: () {
            // TODO show dialog error create game
          },
        );
      },
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: const SettingsButton(),
          trailing: Row(
            children: const [
              InvitationButton(),
              AppSpacer.large(
                orientation: Orientation.horizontal,
              ),
              FriendButton(),
              AppSpacer.large(
                orientation: Orientation.horizontal,
              ),
              StatsButton(),
            ],
          ),
        ),
        child: const HomeWidget(),
      ),
    );
  }
}
