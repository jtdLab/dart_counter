import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/widgets/instagram_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/widgets/name_displayer.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/widgets/play_offline_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/widgets/play_online_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/widgets/train_button.dart';
import 'package:dart_counter/presentation/ios/home/widgets/loaded/widgets/youtube_button.dart';

import 'widgets/image_displayer.dart';

class Loaded extends StatelessWidget {
  final String username;
  final String? photoUrl;

  const Loaded({
    Key? key,
    required this.username,
    this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        ImageDisplayer(
          photoUrl: photoUrl,
        ),
        const Spacer(),
        NameDisplayer(
          name: username,
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
    );
  }
}
