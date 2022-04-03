import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/android/core/core.dart';
import 'package:dart_counter/presentation/core/route_observer.dart';

import 'core/core.dart';

// TODO impl
class App extends PlatformApp {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = context.read<Router>();

    return MaterialApp.router(
      title: 'DartCounter',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(
        initialRoutes: context.read<AuthBloc>().state.when(
              authenticated: () => [const AuthenticatedFlowRoute()],
              unauthenticated: () => [const UnauthenticatedFlowRoute()],
            ),
        navigatorObservers: () => [AppRouteObserver()],
      ),
      theme: Theme.light(),
      darkTheme: Theme.dark(),
    );
  }
}
