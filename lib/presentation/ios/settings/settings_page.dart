import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: CupertinoButton(
          onPressed: () => getIt<IAuthFacade>().signOut(),
          child: const Text('Sign out'),
        ),
      ),
    );
  }
}
