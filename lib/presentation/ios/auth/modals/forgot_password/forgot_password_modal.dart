// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/auth/forgot_password/forgot_password_bloc.dart';

class ForgotPasswordModal extends StatelessWidget {
  const ForgotPasswordModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordBloc.getIt(),
      child: const AutoRouter(),
    );
  }
}
