// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/sign_in/forgot_password/forgot_password_bloc.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

// LOCAL PAGES + WIDGETS
part 'initial/initial_page.dart';
part 'initial/widgets.dart';
part 'success/success_page.dart';
part 'success/widgets.dart';

// TODO custom navigator for modal is workaround because auto_route doesnt support modal bottom sheet
class ForgotPasswordModal extends StatelessWidget {
  // Routes of the flow
  static const String intial = '/';
  static const String success = '/success';

  const ForgotPasswordModal({
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
                builder: (context) =>
                    BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
                  listenWhen: (oldState, newState) =>
                      newState.successful || newState.authFailure != null,
                  listener: (context, state) {
                    if (state.successful) {
                      Navigator.pushReplacementNamed(
                        context,
                        success,
                      );
                      return;
                    }
                    state.authFailure?.maybeWhen(
                      invalidEmail: () => showToast(
                        LocaleKeys.errorInvalidEmailAddress.tr().toUpperCase(),
                      ),
                      orElse: () => showToast(
                        'AutFailure happended',
                      ), // TODO catch other errors also
                    );
                  },
                  child: const _InitialPage(),
                ),
              );
            case success:
              return PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const _SuccessPage(),
                transitionDuration: const Duration(), // TODO why 0 time
              );
          }
        },
      ),
    );
  }
}
