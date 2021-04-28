import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            
          },
          child: const Text('HomePage IOS'),
        ),
      ),
    );
  }
}
