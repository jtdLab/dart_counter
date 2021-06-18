import 'package:dart_counter/presentation/core/assets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:dart_counter/presentation/ios/router.gr.dart';

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
