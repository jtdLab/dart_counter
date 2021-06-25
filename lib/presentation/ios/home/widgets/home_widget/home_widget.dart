import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const ProfileImageDisplayer(),
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
