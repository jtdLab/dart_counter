import 'package:flutter/cupertino.dart';

class InGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
       navigationBar: const CupertinoNavigationBar(
        middle: Text("Best of 5 Legs"),
      ),
      child: SafeArea(
        child: Center(
          child: Text(toString()),
        ),
      ),
    );
  }
}