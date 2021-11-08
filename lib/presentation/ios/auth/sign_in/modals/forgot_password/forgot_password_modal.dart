// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/sign_in/forgot_password/forgot_password_bloc.dart';

// LOCAL PAGES + WIDGETS
part 'initial/initial_page.dart';
part 'initial/widgets.dart';
part 'success/success_page.dart';
part 'success/widgets.dart';

// TODO custom navigator for modal is workaround because auto_route doesnt support modal bottom sheet
class ForgotPasswordModal extends StatelessWidget {
  // Routes of the flow
  static const String initial = '/';
  static const String success = '/success';

  const ForgotPasswordModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: Navigator(
        initialRoute: initial,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case initial:
              return CupertinoPageRoute(
                builder: (context) =>
                    BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
                  listenWhen: (_, newState) =>
                      newState is ForgotPasswordSubmitSuccess ||
                      newState is ForgotPasswordSubmitFailure,
                  listener: (context, state) {
                    if (state is ForgotPasswordSubmitSuccess) {
                      Navigator.pushReplacementNamed(context, success);
                      return;
                    }

                    if (state is ForgotPasswordSubmitFailure) {
                      state.authFailure.maybeWhen(
                        invalidEmail: () => showToast(
                          LocaleKeys.errorInvalidEmailAddress
                              .tr()
                              .toUpperCase(),
                        ),
                        orElse: () => showToast(
                          'AutFailure happended',
                        ), // TODO catch other errors also
                      );
                    }
                  },
                  child: const _InitialPage(),
                ),
              );
            case success:
              return PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const _SuccessPage(),
                transitionDuration: Duration.zero,
              );
          }
        },
      ),
    );
  }
}
