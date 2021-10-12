// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// OTHER
import 'package:timeago/timeago.dart' as timeago;

// BLOCS
import 'package:dart_counter/application/game_history/game_history_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/play/game.dart';

// LOCAL WIDGETS
import './../../shared.dart';
part 'widgets.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(
          LocaleKeys.gameHistory.tr().toUpperCase(),
        ),
      ),
      child: const SingleChildScrollView(
        child: _OverviewWidget(),
      ),
    );
  }
}
