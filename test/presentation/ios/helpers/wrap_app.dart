/**
 * import 'package:dart_counter/presentation/ios/core/core.dart';

Widget wrapCupertinoApp(Widget widget, [Locale? locale]) {
  return Builder(
    builder: (context) {
      return CupertinoApp(
        // TODO cleanr theme sharing from orignial app
        theme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: maxFontSizeNormal(context),
              color: AppColors.black,
              fontFamily: 'SF-Pro',
            ),
          ),
        ),
        home: Localizations(
          delegates: AppLocalizations.localizationsDelegates,
          locale: locale ?? AppLocalizations.supportedLocales.first,
          child: widget,
        ),
      );
    },
  );
}
 */
