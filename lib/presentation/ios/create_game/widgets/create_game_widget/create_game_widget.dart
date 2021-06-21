import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class CreateGameWidget extends StatelessWidget {
  const CreateGameWidget({Key? key}) : super(key: key);

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
        orElse: () => Container(), // TODO shouldnt happen
      ),
    );
  }
}
