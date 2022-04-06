// CORE
import 'package:dart_counter/application/authenticated/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/authenticated/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/authenticated/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/detailed_input_area/blocs.dart'
    as detailed;
import 'package:dart_counter/application/authenticated/play/shared/in_game/standard_input_area/blocs.dart'
    as standard;
import 'package:dart_counter/application/authenticated/shared/input_row/input_row_event.dart';
// DOMAIN
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
// MODALS
import 'package:dart_counter/presentation/ios/authenticated/play/shared/in_game/widgets.dart';
// LOCAL WIDGETS
import 'package:dart_counter/presentation/ios/authenticated/shared/widgets.dart';
import 'package:dart_counter/presentation/ios/authenticated/training/shared/in_training/widgets.dart';

part 'widgets.dart';

// TODO responsivness
class InOfflineGamePage extends StatelessWidget {
  final OfflineGameSnapshot initialSnapshot;

  const InOfflineGamePage({
    Key? key,
    required this.initialSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InOfflineGameBloc.getIt(initialSnapshot),
        ),
      ],
      child: BlocConsumer<InOfflineGameBloc, InGameState<OfflineGameSnapshot>>(
        listener: (context, state) {
          final gameSnapshot = state.gameSnapshot;
          if (gameSnapshot.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (gameSnapshot.status == Status.finished) {
            context.router
                .replace(PostOfflineGamePageRoute(snapshot: gameSnapshot));
          }

          final showCheckoutDetails = state.showCheckoutDetails;

          // TODO
          /**
              *  final keyBoardType =
                  context.read<InOfflineGameBloc>().state.keyBoardType;
              final Bloc<CheckoutDetailsEvent, CheckoutDetailsState> bloc;
              // TODO rly speech also here // TODO remove ??
              if (keyBoardType == KeyBoardType.standard ||
                  keyBoardType == KeyBoardType.speech) {
                bloc = CheckoutDetailsPointsBloc(
                  context.read<InOfflineGameBloc>(),
                  context.read<PointsLeftCubit>(),
                  context.read<PointsCubit>(),
                  getIt<IDartUtils>(), //TODO
                );
              } else {
                bloc = CheckoutDetailsDartsBloc(
                  context.read<InOfflineGameBloc>(),
                  context.read<PointsLeftCubit>(),
                  context.read<DartsCubit>(),
                  getIt<IDartUtils>(), // TODO
                );
              }

              if (showCheckoutDetails) {
                context.router.push(CheckoutDetailsModalRoute(bloc: bloc));
              }
              */
        },
        builder: (context, state) {
          final gameSnapshot = state.gameSnapshot;

          return AppPageScaffold(
            navigationBar: AppNavigationBar(
              leading: Builder(
                builder: (context) => CancelButton(
                  onPressed: () {
                    context.router.push(
                      YouReallyWantToCancelGameDialogRoute(
                        onYesPressed: () =>
                            context.read<InOfflineGameBloc>().add(
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
                    // TODO rework
                    onPressed: () {
                      context.router
                          .push(OfflineStatsModalRoute(snapshot: gameSnapshot));
                    },
                  ),
                  AppNavigationBarButton(
                    onPressed: () {
                      // TODO player rly need be passed here
                      context.router.push(
                        AdvancedSettingsModalRoute(
                          players: gameSnapshot.players,
                        ),
                      );
                      // TODO show ingame settings modal
                      //context.router.push(const InGameSettingsModalRoute());
                    },
                    child: Image.asset(AppImages.settingsNew),
                  ),
                ],
              ),
            ),
            child: const _InOfflineGameWidget(),
          );
        },
      ),
    );
  }
}
