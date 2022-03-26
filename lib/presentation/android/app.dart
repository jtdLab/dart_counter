import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/android/core/core.dart';
import 'package:dart_counter/presentation/core/route_observer.dart';

// TODO impl
class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = Router.getIt();

    return BlocProvider(
      create: (context) => AuthBloc.getIt()..add(const AuthEvent.started()),
      child: MaterialApp.router(
        title: 'DartCounter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
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
      ),
    );
  }
}
