import 'package:dart_counter/application/home/home_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            const Spacer(),
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            const Spacer(flex: 2),
            const NameDisplayer(),
            const Spacer(flex: 2),
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
      },
    );
  }
}
