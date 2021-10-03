// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/settings/change_username/change_username_bloc.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

// LOCAL PAGES + WIDGETS
part 'initial/initial_page.dart';
part 'initial/widgets.dart';
part 'success/success_page.dart';
part 'success/widgets.dart';

class ChangeUsernameModal extends StatelessWidget {
  // Routes of the flow
  static const String initial = '/';
  static const String success = '/success';

  const ChangeUsernameModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangeUsernameBloc>(),
      child: Navigator(
        initialRoute: initial,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case initial:
              return CupertinoPageRoute(
                builder: (context) =>
                    BlocListener<ChangeUsernameBloc, ChangeUsernameState>(
                  listenWhen: (oldState, newState) =>
                      newState.successful || newState.userFailure != null,
                  listener: (context, state) {
                    if (state.successful) {
                      Navigator.pushReplacementNamed(context, success);
                      return;
                    }
                    state.userFailure?.maybeWhen(
                      invalidUsername: () => showToast(
                        LocaleKeys.errorInvalidUsername.tr().toUpperCase(),
                      ),
                      orElse: () => showToast(
                        'UserFailure happended',
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
                transitionDuration: const Duration(),
              );
          }
        },
      ),
    );
  }
}
