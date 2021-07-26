import 'package:dart_counter/application/profile/profile_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            const AppSpacer.large(),
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            const AppSpacer.large(),
            const CareerStatsDisplayer(),
            const AppSpacer.large(),
          ],
        );
      },
    );
  }
}
