import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/game_history/game_history_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class GameHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<GameHistoryBloc>()..add(const GameHistoryEvent.watchStarted()),
      child: const AutoRouter(),
    );
  }
}
