import 'package:dart_counter/application/core/auth/auth_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

final Router router = Router();

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(
        initialRoutes: context.read<AuthBloc>().state.when(
              authenticated: (_) => [const MainFlowRoute()],
              unauthenticated: () => [const AuthFlowRoute()],
            ),
      ),
      theme: const CupertinoThemeData(
        primaryColor: AppColors.black,
        primaryContrastingColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.white,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
