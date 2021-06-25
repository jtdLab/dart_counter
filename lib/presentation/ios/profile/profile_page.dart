import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: const AppNavigationBar(
        leading: BackButton(),
        middle: NameDisplayer(),
        trailing: GameHistoryButton(),
      ),
      child: ProfileWidget(),
    );
  }
}
