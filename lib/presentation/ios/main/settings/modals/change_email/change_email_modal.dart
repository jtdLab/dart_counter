// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/settings/change_email/change_email_bloc.dart';

// LOCAL PAGES + WIDGETS
part 'initial/initial_page.dart';
part 'initial/widgets.dart';
part 'success/success_page.dart';
part 'success/widgets.dart';

class ChangeEmailModal extends StatelessWidget {
  const ChangeEmailModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangeEmailBloc>(),
      child: const AutoRouter(),
    );
  }
}
