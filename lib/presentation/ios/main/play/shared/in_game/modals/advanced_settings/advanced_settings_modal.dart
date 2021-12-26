// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class AdvancedSettingsModal extends StatelessWidget {
  const AdvancedSettingsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      child: _AdvancedSettingsWidget(),
    );
  }
}
