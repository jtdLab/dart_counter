// CORE
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
// BLOCS
import 'package:dart_counter/application/main/play/online/watcher/play_online_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/blocs.dart'
    as detailed;
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/blocs.dart'
    as standard;
import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
// DOMAIN
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/play/shared/in_game/widgets.dart';
// LOCAL WIDGETS
import 'package:dart_counter/presentation/ios/main/shared/widgets.dart';
import 'package:dart_counter/presentation/ios/main/training/shared/in_training/widgets.dart';

part 'widgets.dart';

// TODO responsivness
class InOnlineGamePage extends StatelessWidget {
  const InOnlineGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InOnlineGameBloc>(),
        ),
      ],
      child: BlocConsumer<PlayOnlineWatcherCubit, OnlineGameSnapshot>(
        listener: (context, gameSnapshot) {
          if (gameSnapshot.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (gameSnapshot.status == Status.finished) {
            context.router.replace(const PostOnlineGamePageRoute());
          }
        },
        builder: (context, gameSnapshot) {
          return BlocListener<InOnlineGameBloc, InGameState>(
            listener: (context, state) {
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
                  getIt<IDartUtils>(),
                );
              } else {
                bloc = CheckoutDetailsDartsBloc(
                  context.read<InOnlineGameBloc>(),
                  context.read<PointsLeftCubit>(),
                  context.read<DartsCubit>(),
                  getIt<IDartUtils>(),
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
            child: AppPage(
              navigationBar: AppNavigationBar(
                leading: Builder(
                  builder: (context) => CancelButton(
                    onPressed: () {
                      context.router.push(
                        YouReallyWantToCancelGameDialogRoute(
                          onYesPressed: () =>
                              context.read<InOnlineGameBloc>().add(
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
                      onPressed: () {
                        context.router.push(const OnlineStatsModalRoute());
                      },
                    ),
                    AppNavigationBarButton(
                      onPressed: () {
                        // TODO advanced settings
                        context.router.push(
                          AdvancedSettingsModalRoute(
                            players: context
                                .read<PlayOnlineWatcherCubit>()
                                .state
                                .players,
                          ),
                        );
                      },
                      child: Image.asset(AppImages.settingsNew),
                    ),
                  ],
                ),
              ),
              child: const _InOnlineGameWidget(),
            ),
          );
        },
      ),
    );
  }
}
