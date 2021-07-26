import 'package:dart_counter/application/core/auth/auth_bloc.dart';
import 'package:dart_counter/application/settings/settings_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SettingsBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SignedOut) {
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
                child: SettingsWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
