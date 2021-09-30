// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// 3RD PARTY
import 'package:timeago/timeago.dart' as timeago;

// BLOCS
import 'package:dart_counter/application/game_history/game_history_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/play/game.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/back_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/loading_widget.dart';

// LOCALE WIDGETS
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
