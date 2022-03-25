// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/settings/change_username/change_username_bloc.dart';

class ChangeUsernameModal extends StatelessWidget {
  const ChangeUsernameModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeUsernameBloc.getIt(),
      child: const AutoRouter(),
    );
  }
}
