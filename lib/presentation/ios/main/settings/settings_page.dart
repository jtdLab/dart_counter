// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOC
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/application/main/settings/settings_bloc.dart';

// MODALS
import 'modals/edit_profile_image/edit_profile_image_modal.dart';
import 'modals/change_username/change_username_modal.dart';
import 'modals/change_password/change_password_modal.dart';
import 'modals/change_email/change_email_modal.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';
part 'widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SettingsBloc>()..add(const SettingsEvent.started()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Unauthenticated) {
            context.router.replace(const AuthFlowRoute());
          }
        },
        child: BlocBuilder<SettingsBloc, SettingsState>(
          buildWhen: (oldState, newState) =>
              oldState.user != newState.user ||
              (oldState.localeChanged != newState.localeChanged &&
                  newState.localeChanged),
          builder: (context, state) {
            return AppPage(
              navigationBar: AppNavigationBar(
                leading: const BackButton(),
                middle: Text(
                  LocaleKeys.settings.tr().toUpperCase(),
                ),
              ),
              child: const SingleChildScrollView(
                child: _SettingsWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
