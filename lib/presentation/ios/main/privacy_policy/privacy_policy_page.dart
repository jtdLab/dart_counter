import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      navigationBar: AppNavigationBar(
        leading: BackButton(),
      ),
      child: PrivacyPolicyWidget(),
    );
  }
}
