// CORE
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/application/authenticated/settings/settings_bloc.dart';
// BLOC
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
import '../../shared/widgets.dart';

part 'widgets.dart';

class SettingsPage extends StatelessWidget implements AutoRouteWrapper {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc.getIt(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}
