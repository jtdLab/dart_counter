import 'package:dart_counter/application/settings/change_username/change_username_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_username/change_username_initial/change_username_initial_page.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_username/change_username_success/change_username_success_page.dart';

class ChangeUsernameFlow extends StatelessWidget {
  // Routes of the flow
  static const String intial = '/';
  static const String success = '/success';

  const ChangeUsernameFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangeUsernameBloc>(),
      child: Navigator(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case intial:
              return CupertinoPageRoute(
                builder: (context) => const ChangeUsernameInitialPage(),
              );
            case success:
              return PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const ChangeUsernameSuccessPage(),
                transitionDuration: const Duration(),
              );
          }
        },
      ),
    );
  }
}
