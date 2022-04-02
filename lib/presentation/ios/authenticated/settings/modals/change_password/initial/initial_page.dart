// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/settings/change_password/change_password_bloc.dart';

// WIDGETS
part 'widgets.dart';

class ChangePasswordInitialPage extends StatelessWidget {
  const ChangePasswordInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ChangePasswordInitialView();
  }
}
