import 'package:dart_counter/application/core/user/user_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class NameDisplayer extends StatelessWidget {
  const NameDisplayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (success) {
            final username = success.user.profile.username.getOrCrash();
            return Text(
              username.toUpperCase(),
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}
