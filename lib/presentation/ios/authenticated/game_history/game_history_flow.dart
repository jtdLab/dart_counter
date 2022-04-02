// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/game_history/game_history_bloc.dart';

class GameHistoryFlow extends StatelessWidget implements AutoRouteWrapper {
  final GameHistoryBloc gameHistoryBloc;

  const GameHistoryFlow({
    Key? key,
    required this.gameHistoryBloc,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => gameHistoryBloc,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
