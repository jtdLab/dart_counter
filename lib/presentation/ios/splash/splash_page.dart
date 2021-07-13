import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/splash/splash_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SplashBloc>()..add(const SplashEvent.watchStarted()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) async {
          await Future.delayed(const Duration(seconds: 1));
          state.maybeMap(
            authenticated: (authenticated) {
              final allReceived = authenticated.invitationsReceived &&
                  authenticated.friendRequestsReceived &&
                  authenticated.userReceived;

              if (allReceived) {
                context.router.replace(const HomePageRoute());
              }
            },
            unauthenticated: (_) {
              context.router.replace(const AuthFlowRoute());
            },
            orElse: () {},
          );
        },
        child: const CupertinoPageScaffold(
          child: Center(
            child: Text('ff'),
          ),
        ),
      ),
    );
  }
}
