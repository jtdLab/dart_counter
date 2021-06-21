import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/core/friend_request/friend_request_bloc.dart'
    as fr;
import 'package:dart_counter/application/core/invitation/invitation_bloc.dart'
    as i;
import 'package:dart_counter/application/core/user/user_bloc.dart' as u;
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:dart_counter/presentation/ios/splash/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool allDataReceived = false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) async {
            await Future.delayed(const Duration(seconds: 1));

            if (state == const AuthState.unauthenticated()) {
              context.router.replace(const AuthPageRoute());
            } else if (state == const AuthState.authenticated()) {
              context.read<u.UserBloc>().add(const u.UserEvent.watchStarted());
              context
                  .read<fr.FriendRequestBloc>()
                  .add(const fr.FriendRequestEvent.watchStarted());
              context
                  .read<i.InvitationBloc>()
                  .add(const i.InvitationEvent.watchStarted());
            }
          },
        ),
        BlocListener<u.UserBloc, u.UserState>(
          listener: (context, state) => state.maybeMap(
            loadSuccess: (_) {
              if (context.read<fr.FriendRequestBloc>().state
                      is fr.LoadSuccess &&
                  context.read<i.InvitationBloc>().state is i.LoadSuccess &&
                  !allDataReceived) {
                allDataReceived = true;
                context.router.replace(const HomePageRoute());
              }
            },
            orElse: () {},
          ),
        ),
        BlocListener<fr.FriendRequestBloc, fr.FriendRequestState>(
          listener: (context, state) => state.maybeMap(
            loadSuccess: (_) {
              if (context.read<u.UserBloc>().state is u.LoadSuccess &&
                  context.read<i.InvitationBloc>().state is i.LoadSuccess &&
                  !allDataReceived) {
                allDataReceived = true;
                context.router.replace(const HomePageRoute());
              }
            },
            orElse: () {},
          ),
        ),
        BlocListener<i.InvitationBloc, i.InvitationState>(
          listener: (context, state) => state.maybeMap(
            loadSuccess: (_) {
              if (context.read<fr.FriendRequestBloc>().state
                      is fr.LoadSuccess &&
                  context.read<u.UserBloc>().state is u.LoadSuccess &&
                  !allDataReceived) {
                allDataReceived = true;
                context.router.replace(const HomePageRoute());
              }
            },
            orElse: () {},
          ),
        ),
      ],
      child: CupertinoPageScaffold(
        child: Center(
          child: LogoDisplayer(),
        ),
      ),
    );
  }
}
