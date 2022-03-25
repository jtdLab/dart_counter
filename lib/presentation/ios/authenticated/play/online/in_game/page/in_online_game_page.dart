// CORE
import 'package:dart_counter/application/main/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart';
// BLOCS
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/blocs.dart'
    as detailed;
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/blocs.dart'
    as standard;
import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
// DOMAIN
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/authenticated/play/shared/in_game/widgets.dart';
// LOCAL WIDGETS
import 'package:dart_counter/presentation/ios/authenticated/shared/widgets.dart';
import 'package:dart_counter/presentation/ios/authenticated/training/shared/in_training/widgets.dart';

part 'widgets.dart';

// TODO responsivness
class InOnlineGamePage extends StatelessWidget {
  final OnlineGameSnapshot initialSnapshot;

  const InOnlineGamePage({
    Key? key,
    required this.initialSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InOnlineGameBloc.getIt(initialSnapshot),
        ),
      ],
      child: BlocConsumer<InOnlineGameBloc, InGameState<OnlineGameSnapshot>>(
        listener: (context, state) {
          final gameSnapshot = state.gameSnapshot;

          if (gameSnapshot.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (gameSnapshot.status == Status.finished) {
            context.router
                .replace(PostOnlineGamePageRoute(snapshot: gameSnapshot));
          }

          final showCheckoutDetails = state.showCheckoutDetails;

          /**
               * final keyBoardType =
                  context.read<InOnlineGameBloc>().state.keyBoardType;
              final Bloc<CheckoutDetailsEvent, CheckoutDetailsState> bloc;
              // TODO rly speech also here
              if (keyBoardType == KeyBoardType.standard ||
                  keyBoardType == KeyBoardType.speech) {
                bloc = CheckoutDetailsPointsBloc(
                  context.read<InOnlineGameBloc>(),
                  context.read<PointsLeftCubit>(),
                  context.read<PointsCubit>(),
                  getIt<IDartUtils>(), // TODO
                );
              } else {
                bloc = CheckoutDetailsDartsBloc(
                  context.read<InOnlineGameBloc>(),
                  context.read<PointsLeftCubit>(),
                  context.read<DartsCubit>(),
                  getIt<IDartUtils>(), // TODO
                );
              }

              if (showCheckoutDetails) {
                context.router.push(
                  CheckoutDetailsModalRoute(
                    bloc: bloc,
                  ),
                );
              }
               */
        },
        builder: (context, state) {
          final gameSnapshot = state.gameSnapshot;

          return AppPage(
            navigationBar: AppNavigationBar(
              leading: Builder(
                builder: (context) => CancelButton(
                  onPressed: () {
                    context.router.push(
                      YouReallyWantToCancelGameDialogRoute(
                        onYesPressed: () =>
                            context.read<InOnlineGameBloc>().add(
                                  const InGameEvent.canceled(),
                                ),
                      ),
                    );
                  },
                ),
              ),
              middle: Text(gameSnapshot.description()),
              trailing: Row(
                children: [
                  StatsButton(
                    onPressed: () {
                      context.router
                          .push(OnlineStatsModalRoute(snapshot: gameSnapshot));
                    },
                  ),
                  AppNavigationBarButton(
                    onPressed: () {
                      // TODO advanced settings
                      context.router.push(
                        AdvancedSettingsModalRoute(
                          players: gameSnapshot.players,
                        ),
                      );
                    },
                    child: Image.asset(AppImages.settingsNew),
                  ),
                ],
              ),
            ),
            child: const _InOnlineGameWidget(),
          );
        },
      ),
    );
  }
}
