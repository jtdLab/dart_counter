// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/settings/change_email/change_email_bloc.dart';

class ChangeEmailModal extends StatelessWidget {
  const ChangeEmailModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeEmailBloc.getIt(),
      child: const AutoRouter(),
    );
  }
}
