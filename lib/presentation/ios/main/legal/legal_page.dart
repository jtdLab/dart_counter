import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class LegalPage extends StatelessWidget {
  const LegalPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      navigationBar: AppNavigationBar(
        leading: BackButton(),
      ),
      child: LegalWidget(),
    );
  }
}
