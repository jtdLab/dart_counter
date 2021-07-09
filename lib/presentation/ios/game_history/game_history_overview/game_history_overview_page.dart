import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class GameHistoryOverviewPage extends StatelessWidget {
  const GameHistoryOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(
          LocaleKeys.gameHistory.tr().toUpperCase(),
        ),
      ),
      child: GameHistoryOverviewWidget(),
    );
  }
}
