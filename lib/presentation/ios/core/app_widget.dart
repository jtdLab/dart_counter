// CORE
// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/core/route_observer.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// TODO rename to app flow ?? and move outside core
class AppWidget extends StatelessWidget {
  final Router router;

  const AppWidget({
    Key? key,
    required this.router,
  }) : super(key: key);

  factory AppWidget.withRouter() => AppWidget(router: Router());

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      builder: (context, widget) {
        final style = TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: maxFontSizeNormal(context),
          color: AppColors.black,
        );

        // need to provided default text style so text widgets can look up the text style
        return CupertinoTheme(
          data: CupertinoTheme.of(context).copyWith(
            textTheme: CupertinoTextThemeData(textStyle: style),
          ),
          child: DefaultTextStyle(
            style: style,
            child: widget!,
          ),
        );
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(
        initialRoutes: context.read<AuthBloc>().state.when(
              authenticated: () => [const AuthenticatedFlowRoute()],
              unauthenticated: () => [const UnauthenticatedFlowRoute()],
            ),
        navigatorObservers: () => [DartCounterRouteObserver()],
      ),
      theme: const CupertinoThemeData(
        primaryColor: AppColors.black,
        primaryContrastingColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.white,
      ),
    );
  }
}
