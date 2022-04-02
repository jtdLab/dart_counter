import 'package:dart_counter/presentation/android/core/core.dart';

// TODO doc
MaterialApp appWrapper(
  Widget child, {
  Locale? locale,
  ThemeData? theme,
  ThemeData? darkTheme,
}) =>
    MaterialApp(
      locale: locale ?? AppLocalizations.supportedLocales.first,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: theme ?? Theme.light(),
      darkTheme: darkTheme ?? Theme.dark(),
      home: child,
    );
