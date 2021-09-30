// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/back_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

// LOCAL WIDGETS
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
