// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/play/online/create_game/add_player/add_player_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class AddPlayerModal extends StatelessWidget {
  const AddPlayerModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddPlayerBloc.getIt(),
      child: AppPage(
        padding: modalPagePadding(context),
        onTap: () => FocusScope.of(context).unfocus(),
        child: const _AddPlayerWidget(),
      ),
    );
  }
}
