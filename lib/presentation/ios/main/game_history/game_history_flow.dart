// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/game_history/game_history_bloc.dart';

class GameHistoryFlow extends StatelessWidget {
  final GameHistoryBloc gameHistoryBloc;

  const GameHistoryFlow({
    Key? key,
    required this.gameHistoryBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => gameHistoryBloc,
      child: const AutoRouter(),
    );
  }
}
