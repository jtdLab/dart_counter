import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ForgotPasswordModal extends StatelessWidget {
  const ForgotPasswordModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Success(),
    );
  }
}
