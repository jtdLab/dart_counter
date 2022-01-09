// CORE
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/darts/checkout_details_darts_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/checkout_details/points/checkout_details_points_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/darts/darts_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/key_board_type.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points/points_cubit.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/standard_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/online/watcher/play_online_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/online/in_game/in_online_game_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';

// DOMAIN
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';

// MODALS

// LOCAL WIDGETS
import '../../../../shared/widgets.dart';
import '../../../shared/in_game/widgets.dart';
part 'widgets.dart';

// TODO responsivness
class InOnlineGamePage extends StatelessWidget {
  const InOnlineGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayOnlineWatcherCubit, OnlineGameSnapshot>(
      listener: (context, state) {
        final gameSnapshot = state;

        if (gameSnapshot.status == Status.canceled) {
          context.router.replace(const HomePageRoute());
        } else if (gameSnapshot.status == Status.finished) {
          context.router.replace(const PostOnlineGamePageRoute());
        }
      },
      builder: (context, state) {
        final gameSnapshot = state;

        return BlocListener<ShowCheckoutDetailsCubit, bool>(
          listener: (context, state) {
            final keyBoardType =
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

            if (state) {
              context.router.push(
                CheckoutDetailsModalRoute(
                  bloc: bloc,
                ),
              );

              /**
                 * showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  builder: (context) => BlocProvider(
                    create: (context) => getIt<CheckoutDetailsBloc>(
                      param1: context.read<PointsLeftCubit>(),
                      param2: context.read<InOfflineGameBloc>(),
                    ),
                    child: const CheckoutDetailsModal(),
                  ),
                );
                 */
            }
          },
          child: AppPage(
            navigationBar: AppNavigationBar(
              leading: CancelButton(
                onPressed: () {
                  // show overlay // TODO to complicated thiis is only workaround
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      reverseTransitionDuration: Duration.zero,
                      opaque: false,
                      pageBuilder: (context, _, __) => BlocProvider(
                        create: (context) => getIt<InOnlineGameBloc>(),
                        child: Builder(
                          builder: (context) => YouReallyWantToCancelGameDialog(
                            onYesPressed: () =>
                                context.read<InOnlineGameBloc>().add(
                                      const InGameEvent.gameCanceled(),
                                    ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              middle: Text(
                gameSnapshot.description(),
              ),
              trailing: Row(
                children: [
                  StatsButton(
                    onPressed: () {
                      context.router.push(const OnlineStatsModalRoute());
                      // TODO rework
                      /**
                 *   showCupertinoModalBottomSheet(
                    expand: true,
                    context: context,
                    builder: (context) => Provider.value(
                      // TODO or provide watcher cubit in modal
                      value: context.read<PlayOnlineWatcherCubit>().state,
                      child: const StatsModal(),
                    ),
                  );
                 */
                    },
                  ),
                  AppNavigationBarButton(
                    onPressed: () {
                      context.router.push(
                        AdvancedSettingsModalRoute(
                          players: context
                              .read<PlayOnlineWatcherCubit>()
                              .state
                              .players,
                        ),
                      );
                      // TODO show ingame settings modal
                      //context.router.push(const InGameSettingsModalRoute());
                    },
                    child: Image.asset(
                      AppImages.settingsNew,
                    ),
                  ),
                ],
              ),
            ),
            child: const _InOnlineGameWidget(),
          ),
        );
      },
    );
  }
}
