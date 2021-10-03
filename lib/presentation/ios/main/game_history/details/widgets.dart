part of './details_page.dart';

// BODY
class _DetailsWidget extends StatelessWidget {
  const _DetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameHistoryBloc, GameHistoryState>(
      builder: (context, state) {
        final players = (state as GameHistoryLoadSuccess).selectedGame!.players;

        // TODO
        return const Center(child: Text('TODO GAME HISTORY DETAILS'));
      },
    );
  }
}
