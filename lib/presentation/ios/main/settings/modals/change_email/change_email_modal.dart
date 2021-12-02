// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/settings/change_email/change_email_bloc.dart';

// LOCAL PAGES + WIDGETS
part 'initial/initial_page.dart';
part 'initial/widgets.dart';
part 'success/success_page.dart';
part 'success/widgets.dart';

class ChangeEmailModal extends StatelessWidget {
  // Routes of the flow
  static const String initial = '/';
  static const String success = '/success';

  const ChangeEmailModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangeEmailBloc>(),
      child: Navigator(
        initialRoute: initial,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case initial:
              return CupertinoPageRoute(
                builder: (context) =>
                    BlocListener<ChangeEmailBloc, ChangeEmailState>(
                  listenWhen: (_, newState) =>
                      newState is ChangeEmailSubmitSuccess ||
                      newState is ChangeEmailSubmitFailure,
                  listener: (context, state) {
                    if (state is ChangeEmailSubmitSuccess) {
                      Navigator.pushReplacementNamed(
                          context, ChangeEmailModal.success);
                      return;
                    }

                    if (state is ChangeEmailSubmitFailure) {
                      state.userFailure.maybeWhen(
                        /* TODO
                      invalidEmail: () => showToast(
                        LocaleKeys.errorInvalidEmailAddress.tr().toUpperCase(),
                      ),
                      */
                        orElse: () => showToast(
                          'UserFailure happended',
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
                transitionDuration: const Duration(),
              );
          }
        },
      ),
    );
  }
}
