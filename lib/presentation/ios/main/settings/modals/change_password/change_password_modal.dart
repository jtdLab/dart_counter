// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/settings/change_password/change_password_bloc.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

// LOCAL PAGES + WIDGETS
part 'initial/initial_page.dart';
part 'initial/widgets.dart';
part 'success/success_page.dart';
part 'success/widgets.dart';

class ChangePasswordModal extends StatelessWidget {
  // Routes of the flow
  static const String intial = '/';
  static const String success = '/success';

  const ChangePasswordModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangePasswordBloc>(),
      child: BlocListener<ChangePasswordBloc, ChangePasswordState>(
        listenWhen: (oldState, newState) =>
            newState.successful || newState.authFailure != null,
        listener: (context, state) {
          if (state.successful) {
            Navigator.pushReplacementNamed(context, success);
            return;
          }
          state.authFailure?.maybeWhen(
            orElse: () => showToast(
              'AuthFailure happended',
            ), // TODO catch other errors also
          );
        },
        child: Navigator(
          initialRoute: '/',
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case intial:
                return CupertinoPageRoute(
                  builder: (context) => const _InitialPage(),
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
      ),
    );
  }
}
