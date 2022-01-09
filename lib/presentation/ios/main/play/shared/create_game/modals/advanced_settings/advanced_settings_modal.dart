// CORE
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/play/shared/in_game/modals/advanced_settings/advanced_settings_modal.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class CreateGameAdvancedSettingsModal extends StatelessWidget {
  final int index;

  const CreateGameAdvancedSettingsModal({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppModal(
      child: _CreateGameAdvancedSettingsWidget(index: index),
    );
  }
}
