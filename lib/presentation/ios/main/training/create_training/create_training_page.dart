// CORE
import 'package:dart_counter/domain/training/training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/core/training/create_training/create_training_bloc.dart';

// LOCAL WIDGETS
import './../../shared.dart';
part 'widgets.dart';

class CreateTrainingPage extends StatelessWidget {
  const CreateTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: CancelButton(
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                reverseTransitionDuration: Duration.zero,
                opaque: false,
                pageBuilder: (context, _, __) =>
                    // TODO
                    /**BlocProvider(
                  create: (context) => getIt<CreateTrainingBloc>(),
                  child:*/
                    Builder(
                  builder: (context) => YouReallyWantToCancelGameDialog(
                    onYesPressed: () {},
                  ),
                ),
                // TODO
                /**
                       * () => context.read<CreateGameBloc>().add(
                            const CreateGameEvent.gameCanceled(),
                          ),
                       */
                //),
              ),

              //),
              //),
            );
          },
        ),
        middle: Text(
          LocaleKeys.createGame.tr().toUpperCase(),
        ),
      ),
      child: const SingleChildScrollView(
        child: _CreateTrainingWidget(),
      ),
    );
  }
}
