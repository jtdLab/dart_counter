import 'package:dart_counter/application/profile/profile_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            const Spacer(),
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            const Spacer(),
            const CareerStatsDisplayer(),
            const Spacer(),
          ],
        );
      },
    );
  }
}
