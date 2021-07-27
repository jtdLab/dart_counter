import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size70(context) + 3 * size6(context), // TODO height correct
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(LocaleKeys.dartsThrown.tr().toUpperCase()),
              Text(LocaleKeys.averrage.tr().toUpperCase()),
              Text(LocaleKeys.checkoutPercentageShort.tr().toUpperCase()),
            ],
          ),
          const AppSpacer.normal(
            orientation: Orientation.horizontal,
          ),
          BlocBuilder<PlayerDisplayerBloc, PlayerDisplayerState>(
            builder: (context, state) {
              final player = state.players[0];

              final dartsThrown = player.dartsThrownCurrentLeg;
              final average = player.stats.average;
              final checkout = player.stats.checkoutPercentage;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(': $dartsThrown'),
                  Text(': ${average.toStringAsFixed(2)}'),
                  Text(': ${checkout.toStringAsFixed(2)}'),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
