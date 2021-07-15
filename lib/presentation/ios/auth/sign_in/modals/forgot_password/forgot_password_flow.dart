import 'package:dart_counter/application/sign_in/forgot_password/forgot_password_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

import 'package:dart_counter/presentation/ios/auth/sign_in/modals/forgot_password/forgot_password_initial/forgot_password_initial_page.dart';
import 'package:dart_counter/presentation/ios/auth/sign_in/modals/forgot_password/forgot_password_success/forgot_password_success_page.dart';

// TODO custom navigator for modal is workaround because auto_route doesnt support modal bottom sheet
class ForgotPasswordFlow extends StatelessWidget {
  // Routes of the flow
  static const String intial = '/';
  static const String success = '/success';

  const ForgotPasswordFlow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: Navigator(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case intial:
              return CupertinoPageRoute(
                builder: (context) => const ForogotPasswordInitialPage(),
              );
            case success:
              return CupertinoPageRoute(
                builder: (context) => const ForgotPasswordSuccessPage(),
              );
          }
        },
      ),
    );
  }
}
