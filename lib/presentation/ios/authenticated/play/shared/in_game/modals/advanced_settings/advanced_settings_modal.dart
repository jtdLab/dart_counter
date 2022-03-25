// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/play/advanced_settings.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class AdvancedSettingsModal extends StatelessWidget {
  // TODO provide better not pass down over route
  final KtList<AbstractPlayerSnapshot> players;

  const AdvancedSettingsModal({
    Key? key,
    required this.players,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      padding: modalPagePadding(context),
      child: Provider.value(
        value: players,
        child: const SingleChildScrollView(
          child: _AdvancedSettingsWidget(),
        ),
      ),
    );
  }
}
