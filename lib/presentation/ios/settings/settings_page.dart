import 'package:dart_counter/application/auth/auth_bloc.dart';

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
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: const BackButton(),
          middle: Text(
            LocaleKeys.settings.tr().toUpperCase(),
          ),
        ),
        child: const SettingsWidget(),
      ),
    );
  }
}
