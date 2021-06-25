import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class CreateGameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) => state.maybeMap(
        success: (success) => Column(
          children: const [
            DartBotCard(),
            AppSpacer.large(),
            PlayerCard(),
            AppSpacer.large(),
            GameSettingsCard(),
            AppSpacer.normal(),
            PlayButton(),
          ],
        ),
        orElse: () => throw UnexpectedStateError(),
      ),
    );
  }
}
