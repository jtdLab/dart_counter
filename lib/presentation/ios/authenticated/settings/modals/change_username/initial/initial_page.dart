// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/settings/change_username/change_username_bloc.dart';

// WIDGETS
part 'widgets.dart';

class ChangeUsernameInitialPage extends StatelessWidget {
  const ChangeUsernameInitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ChangeUsernameInitialView();
  }
}
