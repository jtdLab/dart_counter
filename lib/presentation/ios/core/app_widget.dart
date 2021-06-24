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
      routerDelegate: router.delegate(),
      theme: const CupertinoThemeData(
        primaryColor: AppColors.black,
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
