import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/logo_displayer.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        await Future.delayed(const Duration(seconds: 1));

        if (state == const AuthState.unauthenticated()) {
          context.router.replace(const AuthPageRoute());
        } else if (state == const AuthState.authenticated()) {
          context.router.replace(const HomePageRoute());
        }
      },
      child: CupertinoPageScaffold(
        child: Center(
          child: LogoDisplayer(),
        ),
      ),
    );
  }
}
