import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.all(size6(context)),
        child: BlocBuilder<InGameBloc, InGameState>(
          builder: (context, state) {
            final player = state.game.players[0];

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _StatDisplayer(
                  icon: AppImages.flightWhite,
                  value: player.dartsThrownCurrentLeg.toString(),
                ),
                _StatDisplayer(
                  icon: AppImages.averageWhite,
                  value: player.stats.average.toStringAsFixed(2),
                ),
                _StatDisplayer(
                  icon: AppImages.checkoutPercentageWhite,
                  value: player.stats.checkoutPercentage.toStringAsFixed(2),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _StatDisplayer extends StatelessWidget {
  final String icon;
  final String? value;

  const _StatDisplayer({
    Key? key,
    required this.icon,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: 10,
          child: Image.asset(
            icon,
            fit: BoxFit.fill,
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            value ?? '-',
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  color: AppColors.white,
                ),
          ),
        ),
      ],
    );
  }
}
