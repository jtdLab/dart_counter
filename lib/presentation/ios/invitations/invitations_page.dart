import 'package:dart_counter/application/core/invitation/invitation_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InvitationsPage extends StatefulWidget {
  @override
  _InvitationsPageState createState() => _InvitationsPageState();
}

class _InvitationsPageState extends State<InvitationsPage> {
  @override
  void initState() {
    context
        .read<InvitationBloc>()
        .add(const InvitationEvent.newInvitationsRead());
    super.initState();
  }

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
