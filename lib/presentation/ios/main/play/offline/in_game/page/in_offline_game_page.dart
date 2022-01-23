// CORE
import 'package:dart_counter/application/main/play/offline/in_game/in_offline_game_bloc.dart';
import 'package:dart_counter/application/main/play/offline/watcher/play_offline_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/darts/checkout_details_darts_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/points/checkout_details_points_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/darts/darts_cubit.dart';

// BLOCS
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/key_board_type.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points/points_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/speech_input_area/speech_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/standard_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/blocs.dart'
    as standard;
import 'package:dart_counter/application/main/play/offline/in_game/detailed_input_area/blocs.dart'
    as detailed;
import 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';

// DOMAIN
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/training/shared/in_training/widgets.dart';

// LOCAL WIDGETS
import '../../../../shared/widgets.dart';
// MODALS
import '../../../shared/in_game/widgets.dart';

part 'widgets.dart';

// TODO responsivness
class InOfflineGamePage extends StatelessWidget {
  const InOfflineGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InOfflineGameBloc>(),
        ),
      ],
      child: BlocConsumer<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
        listener: (context, gameSnapshot) {
          if (gameSnapshot.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (gameSnapshot.status == Status.finished) {
            context.router.replace(const PostOfflineGamePageRoute());
          }
        },
        builder: (context, gameSnapshot) {
          return BlocListener<InOfflineGameBloc, InGameState>(
            listener: (context, state) {
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
                  getIt<IDartUtils>(),
                );
              } else {
                bloc = CheckoutDetailsDartsBloc(
                  context.read<InOfflineGameBloc>(),
                  context.read<PointsLeftCubit>(),
                  context.read<DartsCubit>(),
                  getIt<IDartUtils>(),
                );
              }

              if (showCheckoutDetails) {
                context.router.push(CheckoutDetailsModalRoute(bloc: bloc));
              }
              */
            },
            child: AppPage(
              navigationBar: AppNavigationBar(
                leading: Builder(
                  builder: (context) => CancelButton(
                    onPressed: () {
                      context.router.push(
                        YouReallyWantToCancelGameDialogRoute(
                          onYesPressed: () =>
                              context.read<InOfflineGameBloc>().add(
                                    const InGameEvent.gameCanceled(),
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
                        context.router.push(const OfflineStatsModalRoute());
                      },
                    ),
                    AppNavigationBarButton(
                      onPressed: () {
                        // TODO player rly passed
                        context.router.push(
                          AdvancedSettingsModalRoute(
                            players: context
                                .read<PlayOfflineWatcherCubit>()
                                .state
                                .players,
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
            ),
          );
        },
      ),
    );
  }
}
