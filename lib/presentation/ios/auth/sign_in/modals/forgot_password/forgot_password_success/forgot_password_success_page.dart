import 'package:dart_counter/presentation/ios/auth/sign_in/modals/forgot_password/forgot_password_success/widgets/forgot_password_success_widget.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ForgotPasswordSuccessPage extends StatelessWidget {
  const ForgotPasswordSuccessPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      child: ForgotPasswordSuccessWidget(),
    );
  }
}
