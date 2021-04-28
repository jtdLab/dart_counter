import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final Router router = Router();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
    );
  }
}
