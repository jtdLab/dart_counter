import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signedOut());
          },
          child: const Text('HomePage IOS'),
        ),
      ),
    );
  }
}
