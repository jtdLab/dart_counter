// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// OTHER
import 'dart:math' as math;
import 'package:dartz/dartz.dart' hide State;

// BLOCS
import 'package:dart_counter/application/in_game/checkout_details/checkout_details_bloc.dart';
import 'package:dart_counter/application/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/application/in_game/optical_input_area/optical_input_area_bloc.dart';
import 'package:dart_counter/application/in_game/speech_input_area/speech_input_area_bloc.dart';
import 'package:dart_counter/application/in_game/standard_input_area/standard_input_area_bloc.dart';
import 'package:dart_counter/application/in_game/stats/stats_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/domain/play/status.dart';

// MODALS
import 'modals/checkout_details/checkout_details_modal.dart';
import 'modals/stats/stats_modal.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/cancel_button.dart';
import '../shared.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO responsivness
class InGamePage extends StatelessWidget {
  const InGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InGameBloc>(),
      child: BlocConsumer<InGameBloc, InGameState>(
        listener: (context, state) {
          final showCheckoutDetails =
              context.read<InGameBloc>().state.showCheckoutDetails;

          if (showCheckoutDetails) {
            showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) => BlocProvider(
                create: (context) => getIt<CheckoutDetailsBloc>(),
                child: const CheckoutDetailsModal(),
              ),
            );
          }

          final game = state.game;
          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (game.status == Status.finished) {
            context.router.replace(const PostGamePageRoute());
          }
        },
        builder: (context, state) {
          final game = state.game;
          return AppPage(
            navigationBar: AppNavigationBar(
              leading: CancelButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      reverseTransitionDuration: const Duration(),
                      opaque: false,
                      pageBuilder: (context, _, __) => BlocProvider(
                        create: (context) => getIt<InGameBloc>(),
                        child: Builder(
                          builder: (context) => YouReallyWantToCancelGameDialog(
                            onYesPressed: () => context.read<InGameBloc>().add(
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
                game.description(),
              ),
              trailing: const _StatsButton(),
            ),
            child: const _InGameWidget(),
          );
        },
      ),
    );
  }
}
