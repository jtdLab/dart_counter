// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';
part 'widgets.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        middle: Text(
          context.l10n.privacyPolicy.toUpperCase(),
        ),
        leading: const BackButton(),
      ),
      child: const SingleChildScrollView(
        child: _PrivacyPolicyWidget(),
      ),
    );
  }
}
