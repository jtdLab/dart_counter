import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      navigationBar: AppNavigationBar(
        leading: BackButton(),
      ),
      child: ContactWidget(),
    );
  }
}
