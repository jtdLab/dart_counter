import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/image_displayer.dart';
import 'widgets/instagram_button.dart';
import 'widgets/name_displayer.dart';
import 'widgets/play_offline_button.dart';
import 'widgets/play_online_button.dart';
import 'widgets/train_button.dart';
import 'widgets/youtube_button.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) => state.maybeMap(
        loadSuccess: (loadSuccess) => Column(
          children: [
            const Spacer(),
            ImageDisplayer(
              photoUrl: loadSuccess.user.profile.photoUrl,
            ),
            const Spacer(),
            NameDisplayer(
              name: loadSuccess.user.profile.username.getOrCrash(),
            ),
            const Spacer(),
            PlayOnlineButton(),
            const AppSpacer.normal(),
            PlayOfflineButton(),
            const AppSpacer.normal(),
            TrainButton(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InstagramButton(),
                YoutubeButton(),
              ],
            ),
            const Spacer(),
          ],
        ),
        orElse: () => Container(), // TODO shouldnt happen
      ),
    );
  }
}
