// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// WIDGETS
part 'widgets.dart';

class ChangeUsernameSuccessPage extends StatelessWidget {
  const ChangeUsernameSuccessPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      child: _ChangeUsernameSuccessWidget(),
    );
  }
}
