import 'package:dart_counter/injection.dart';
import 'package:dart_counter/application/invitations/invitations_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InvitationsPage extends StatelessWidget {
  const InvitationsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InvitationsBloc>(),
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: const BackButton(),
          middle: Text(LocaleKeys.invitations.tr().toUpperCase()),
        ),
        child: const InvitationsWidget(),
      ),
    );
  }
}
