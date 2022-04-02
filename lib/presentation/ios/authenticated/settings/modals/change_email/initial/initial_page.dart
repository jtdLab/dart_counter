// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/settings/change_email/change_email_bloc.dart';

// WIDGETS
part 'widgets.dart';

class ChangeEmailInitialPage extends StatelessWidget {
  const ChangeEmailInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ChangeEmailInitialView();
  }
}
