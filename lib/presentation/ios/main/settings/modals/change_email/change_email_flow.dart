import 'package:dart_counter/application/settings/change_email/change_email_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_email/change_email_initial/change_email_initial_page.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_email/change_email_success/change_email_success_page.dart';

class ChangeEmailFlow extends StatelessWidget {
  // Routes of the flow
  static const String intial = '/';
  static const String success = '/success';

  const ChangeEmailFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangeEmailBloc>(),
      child: Navigator(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case intial:
              return CupertinoPageRoute(
                builder: (context) => const ChangeEmailInitialPage(),
              );
            case success:
              return PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const ChangeEmailSuccessPage(),
                transitionDuration: const Duration(),
              );
          }
        },
      ),
    );
  }
}
