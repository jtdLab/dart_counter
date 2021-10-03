part of 'stats_modal.dart';

// BODY
class _StatsWidget extends StatelessWidget {
  const _StatsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatsBloc, StatsState>(
      builder: (context, state) {
        final players = state.gameSnapshot.players;

        return StatsWidget(
          players: players,
        );
      },
    );
  }
}
