// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/auth/auth_bloc.dart';

final Router router = Router();

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
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(
        initialRoutes: context.read<AuthBloc>().state.when(
              authenticated: () => [const MainFlowRoute()],
              unauthenticated: () => [const AuthFlowRoute()],
            ),
      ),
      theme: const CupertinoThemeData(
        primaryColor: AppColors.black,
        primaryContrastingColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.white,
      ),
    );
  }
}
