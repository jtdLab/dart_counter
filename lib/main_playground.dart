import 'package:dart_counter/presentation/ios/core/widgets/app_drop_down/app_drop_down.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    CupertinoApp(
      home: CupertinoPageScaffold(
        child: Padding(
          padding: EdgeInsets.only(
            top: 48,
            left: 32,
            right: 32,
          ),
          child: AppDropDown(text: 'Drop here'),
        ),
      ),
    ),
  );
}
