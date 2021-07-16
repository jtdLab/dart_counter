import 'package:dart_counter/application/settings/change_password/change_password_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_password/change_password_initial/change_password_initial_page.dart';
import 'package:dart_counter/presentation/ios/main/settings/modals/change_password/change_password_success/change_password_success_page.dart';

class ChangePasswordFlow extends StatelessWidget {
  // Routes of the flow
  static const String intial = '/';
  static const String success = '/success';

  const ChangePasswordFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangePasswordBloc>(),
      child: Navigator(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case intial:
              return CupertinoPageRoute(
                builder: (context) => const ChangePasswordInitialPage(),
              );
            case success:
              return CupertinoPageRoute(
                builder: (context) => const ChangePasswordSuccessPage(),
              );
          }
        },
      ),
    );
  }
}
