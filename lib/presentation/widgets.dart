import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:flutter/widgets.dart';

class MyView extends StatelessWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(width: 100, height: 100),
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) => state.when(
            authenticated: () => Text(context.l10n.confirm.toLowerCase()),
            unauthenticated: () => Text(context.l10n.done.toLowerCase()),
          ),
        ),
      ],
    );
  }
}
