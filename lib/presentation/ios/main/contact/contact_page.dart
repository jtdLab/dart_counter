// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
import '../shared/widgets.dart';
part 'widgets.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        middle: Text(
          LocaleKeys.contact.tr().toUpperCase(),
        ),
        leading: const BackButton(),
      ),
      child: const _ContactWidget(),
    );
  }
}
