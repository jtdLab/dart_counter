import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class CreateGameWidget extends StatelessWidget {
  const CreateGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DartBotCard(),
        AppSpacer.large(),
        PlayerCard(),
        AppSpacer.large(),
        GameSettingsCard(),
        AppSpacer.normal(),
        PlayButton(),
      ],
    );
  }
}
