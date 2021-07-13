import 'package:dart_counter/application/profile/profile_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class NameDisplayer extends StatelessWidget {
  const NameDisplayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final username = state.user.profile.username.getOrCrash();

        return Text(
          username.toUpperCase(),
        );
      },
    );
  }
}
