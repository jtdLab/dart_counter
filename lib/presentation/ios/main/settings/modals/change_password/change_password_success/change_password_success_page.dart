import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ChangePasswordSuccessPage extends StatelessWidget {
  const ChangePasswordSuccessPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      child: ChangePasswordSuccessWidget(),
    );
  }
}
