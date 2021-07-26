import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        middle: Text(
          LocaleKeys.privacyPolicy.tr().toUpperCase(),
        ),
        leading: const BackButton(),
      ),
      child: const SingleChildScrollView(
        child: PrivacyPolicyWidget(),
      ),
    );
  }
}
