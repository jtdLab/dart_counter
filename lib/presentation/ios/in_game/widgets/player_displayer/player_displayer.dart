import 'package:dart_counter/presentation/ios/core/widgets/layout/app_spacer.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/center/center.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/footer.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/header.dart';
import 'package:flutter/cupertino.dart' hide Center;

class PlayerDisplayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Header(),
        const AppSpacer.large(),
        Center(),
        const AppSpacer.large(),
        Footer(),
      ],
    );
  }
}
