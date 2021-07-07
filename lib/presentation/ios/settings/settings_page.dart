import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/settings/settings_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state == const AuthState.unauthenticated()) {
          context.router.replace(const AuthPageRoute());
        }
      },
      child: BlocProvider(
        create: (context) =>
            getIt<SettingsBloc>()..add(const SettingsEvent.watchStarted()),
        child: AppPage(
          maxHeight: 800, // TODO
          navigationBar: AppNavigationBar(
            leading: const BackButton(),
            middle: Text(
              LocaleKeys.settings.tr().toUpperCase(),
            ),
          ),
          child: SettingsWidget(),
        ),
      ),
    );
  }
}

