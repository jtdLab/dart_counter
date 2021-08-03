import 'package:dart_counter/domain/play/status.dart';

import 'package:dart_counter/application/in_game/checkout_details/checkout_details_bloc.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

import 'package:dart_counter/presentation/ios/main/game/shared/you_really_want_to_cancel_game_dialog.dart';
import 'modals/modals.dart';
import 'widgets/widgets.dart';

// TODO responsiveness
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
              trailing: const StatsButton(),
            ),
            child: const InGameWidget(),
          );
        },
      ),
    );
  }
}
