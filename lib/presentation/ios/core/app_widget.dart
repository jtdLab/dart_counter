// CORE
import 'package:dart_counter/presentation/core/route_observer.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';

// TODO is this global var even used or is it done over context
// Fore more info look auto_route pub dev read.me
final Router router = Router();

// TODO rename to app flow ?? and move outside core
class AppWidget extends StatelessWidget {
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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
      ],
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(
        initialRoutes: context.read<AuthBloc>().state.when(
              authenticated: () => [const MainFlowRoute()],
              unauthenticated: () => [const AuthFlowRoute()],
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
