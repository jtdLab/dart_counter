// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';

class ForgotPasswordModal extends StatelessWidget implements AutoRouteWrapper {
  const ForgotPasswordModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordBloc.getIt(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
