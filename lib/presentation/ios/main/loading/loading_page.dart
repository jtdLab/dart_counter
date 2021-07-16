import 'package:dart_counter/application/core/friends/friends_bloc.dart' as f;
import 'package:dart_counter/application/core/invitations/invitations_bloc.dart'
    as i;
import 'package:dart_counter/application/core/user/user_bloc.dart' as u;

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<u.UserBloc, u.UserState>(
          listener: (context, state) async {
            final allReceived = state is u.Success &&
                context.read<i.InvitationsBloc>().state is i.Success &&
                context.read<f.FriendsBloc>().state is f.Success;

            await Future.delayed(const Duration(milliseconds: 1000));

            if (allReceived) {
              context.router.replace(const HomePageRoute());
            }
          },
        ),
        BlocListener<i.InvitationsBloc, i.InvitationsState>(
          listener: (context, state) async {
            final allReceived = context.read<u.UserBloc>().state is u.Success &&
                state is i.Success &&
                context.read<f.FriendsBloc>().state is f.Success;

            await Future.delayed(const Duration(milliseconds: 1000));

            if (allReceived) {
              context.router.replace(const HomePageRoute());
            }
          },
        ),
        BlocListener<f.FriendsBloc, f.FriendsState>(
          listener: (context, state) async {
            final allReceived = context.read<u.UserBloc>().state is u.Success &&
                context.read<i.InvitationsBloc>().state is i.Success &&
                state is f.Success;

            await Future.delayed(const Duration(milliseconds: 1000));

            if (allReceived) {
              context.router.replace(const HomePageRoute());
            }
          },
        ),
      ],
      child: const AppPage(
        child: LoadingWidget(),
      ),
    );
  }
}
