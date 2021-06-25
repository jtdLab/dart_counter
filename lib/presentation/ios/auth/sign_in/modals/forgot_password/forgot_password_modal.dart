import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/auth/forgot_password/forgot_password_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ForgotPasswordModal extends StatelessWidget {
  const ForgotPasswordModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
        listenWhen: (oldState, newState) => newState is FailureState,
        listener: (context, state) {
          // TODO show Error invalid email etc
          print('error forgot password');
        },
        buildWhen: (oldState, newState) => newState is! FailureState,
        builder: (context, state) {
          return AppPage(
            onTap: () => FocusScope.of(context).unfocus(),
            child: state.maybeMap(
              initial: (_) => const Initial(),
              success: (_) => const Success(),
              orElse: () => throw UnexpectedStateError(),
            ),
          );
        },
      ),
    );
  }
}
