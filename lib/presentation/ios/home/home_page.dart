import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state == const AuthState.unauthenticated()) {
          context.router.replace(const AuthWidgetRoute());
        } else {
          context.router.replace(const HomePageRoute());
        }
      },
      builder: (context, state) => CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
            child: const Text('HomePage IOS'),
          ),
        ),
      ),
    );
  }
}
