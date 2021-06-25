import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class GameHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(
          LocaleKeys.matchHistory.tr().toUpperCase(),
        ),
      ),
      child: GameHistoryWidget(),
    );
  }
}
