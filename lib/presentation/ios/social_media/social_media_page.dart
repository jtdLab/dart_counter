import 'package:flutter/cupertino.dart';

class SocialMediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: Text(toStringShort()),
      ),
    );
  }
}