// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/settings/change_password/change_password_bloc.dart';

class ChangePasswordModal extends StatelessWidget {
  const ChangePasswordModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangePasswordBloc>(),
      child: const AutoRouter(),
    );
  }
}
