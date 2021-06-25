import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InvitationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(LocaleKeys.invitations.tr().toUpperCase()),
      ),
      child: InvitationsWidget(),
    );
  }
}
