import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class GameHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(LocaleKeys.matchHistory.tr()),
      ),
      child: Center(
        child: Text(toStringShort()),
      ),
    );
  }
}
