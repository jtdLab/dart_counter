import 'package:dart_counter/presentation/ios/core/widgets/loading.dart';

import 'package:flutter/cupertino.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Loading(),
    );
  }
}
