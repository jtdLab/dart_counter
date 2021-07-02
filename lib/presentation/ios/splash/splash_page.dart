import 'package:dart_counter/domain/user/user.dart';
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
          final allReceived = state.invitationsReceived &&
              state.friendRequestsReceived &&
              state.userReceived;

          if (allReceived) {
            await Future.delayed(const Duration(seconds: 1));
            // TODO auth
            context.router.replace(const HomePageRoute());
          }
        },
        child: const CupertinoPageScaffold(
          child: Center(
            child: LogoDisplayer(),
          ),
        ),
      ),
    );
  }
}
