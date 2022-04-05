import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:flutter/widgets.dart';

import 'widgets.dart';

class MyPage extends StatelessWidget implements AutoRouteWrapper {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc.getIt(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.whenOrNull(
        authenticated: () => context.read<AppToast>().show(context.l10n.confirm.toLowerCase()),
        unauthenticated: () => context.read<AppToast>().show(context.l10n.done.toLowerCase()),
      ),
      child: const MyView(),
    );
  }
}
