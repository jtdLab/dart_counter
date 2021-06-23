import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:flutter/cupertino.dart';

import 'widgets/widgets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const ImageDisplayer(),
        const Spacer(),
        const NameDisplayer(),
        const Spacer(),
        PlayOnlineButton(),
        const AppSpacer.normal(),
        PlayOfflineButton(),
        const AppSpacer.normal(),
        TrainButton(),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            InstagramButton(),
            YoutubeButton(),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
