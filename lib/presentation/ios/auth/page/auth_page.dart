// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_up/sign_up_bloc.dart';
import 'package:dart_counter/application/auth/sign_in/sign_in_bloc.dart';

part 'widgets.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _AuthWidget();
  }
}
