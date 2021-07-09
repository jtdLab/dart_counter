import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/settings/settings_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SettingsBloc>()..add(const SettingsEvent.watchStarted()),
      child: BlocListener<SettingsBloc, SettingsState>(
        listenWhen: (oldState, newState) => newState.signedOut,
        listener: (context, state) {
          if (state.signedOut) {
            context.router.replace(const AuthPageRoute());
          }
        },
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
