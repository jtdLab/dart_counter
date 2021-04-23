import 'package:flutter/cupertino.dart';

class AppWidgetIos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'DartCounter',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: Text('DartCounter Ios'),
        ),
      ),
    );
  }
}